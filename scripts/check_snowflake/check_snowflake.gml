function check_snowflake() {
    switch(room) {
        case rm_level3:
		case rm_level9:
		case rm_level4:
            if (global.snowflake == 2) {
                global.open = true;
            }
            break;
		case rm_level5:
			if (global.snowflake == 3) {
                global.open = true;
            }
			break;
        default:
		if (global.snowflake == 1) {
			global.open = true;
			}
            break;
    }
}