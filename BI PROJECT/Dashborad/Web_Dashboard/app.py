# Importing the Streamlit library
import streamlit as st

# Streamlit app definition
def main():
    # Title of the app
    st.title("Palestine And Israel Conflict")

    # Text input for user to enter a message
    user_input = st.text_input("Enter a message:")

    # Button to trigger an action when clicked
    if st.button("Show Message"):
        # Displaying a message with the entered text
        st.success(f"You entered: {user_input}")

# Running the Streamlit app
if __name__ == "__main__":
    main()
