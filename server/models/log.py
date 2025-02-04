class AnalysisLog:
    def __init__(self, messages: list[str] | None = None):
        self.messages = messages if messages is not None else []

    def add_message(self, message: str):
        self.messages.append(message)

    def to_string(self):
        string = ""
        for message in self.messages:
            string += f"[Analysis Log] {message}\n"
        return string
