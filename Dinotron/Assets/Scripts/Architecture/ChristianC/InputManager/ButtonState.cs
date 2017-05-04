public struct ButtonState {
    private bool pressed;
    private bool held;
    private bool released;
    private bool notHeld;

    public bool Pressed { get { return pressed; } }
    public bool Held { get { return held; } }
    public bool Released { get { return released; } }
    public bool NotHeld { get { return notHeld; } }

    public ButtonState(bool pressed, bool held, bool released, bool notHeld) {
        this.pressed = pressed;
        this.held = held;
        this.released = released;
        this.notHeld = notHeld;
    }
}