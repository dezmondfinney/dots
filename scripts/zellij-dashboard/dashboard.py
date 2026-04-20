import subprocess
from textual.app import App, ComposeResult
from textual.widgets import DataTable

class ZellijDashboard(App):
    def compose(self) -> ComposeResult:
        yield DataTable()

    def on_mount(self) -> None:
        table = self.query_one(DataTable)
        table.add_columns("Session Name", "Status", "Creation Time")
        try:
            result = subprocess.run(["zellij", "list-sessions"], capture_output=True, text=True, check=True)
            sessions = result.stdout.strip().split('\n')
            for session in sessions:
                if session:
                    parts = session.split()
                    name = parts[0]
                    status = " ".join(parts[1:parts.index("ago]") + 1])
                    creation_time = " ".join(parts[parts.index("ago]") + 1:])
                    table.add_row(name, status, creation_time)
        except FileNotFoundError:
            table.add_row("Error", "Zellij not found", "")
        except subprocess.CalledProcessError as e:
            table.add_row("Error", e.stderr, "")

if __name__ == "__main__":
    app = ZellijDashboard()
    app.run()
