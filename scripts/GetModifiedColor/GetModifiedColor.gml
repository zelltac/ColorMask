function GetModifiedColor(original_color, filter_color) {
    switch (original_color) {
    	case "red":
            switch (filter_color) {
            	case "red":
                    return "red";
                case "green":
                    return "black";
                case "blue":
                    return "black";
                case "cyan":
                    return "black";
                case "magenta":
                    return "red";
                case "yellow":
                    return "red";
                default:
                    return "red";
            }
        case "green":
            switch (filter_color) {
            	case "red":
                    return "black";
                case "green":
                    return "green";
                case "blue":
                    return "black";
                case "cyan":
                    return "green";
                case "magenta":
                    return "black";
                case "yellow":
                    return "green";
                default:
                    return "green";
            }
        case "blue":
            switch (filter_color) {
            	case "red":
                    return "black";
                case "green":
                    return "black";
                case "blue":
                    return "blue";
                case "cyan":
                    return "blue";
                case "magenta":
                    return "blue";
                case "yellow":
                    return "black";
                default:
                    return "blue";
            }
        case "cyan":
            switch (filter_color) {
            	case "red":
                    return "black";
                case "green":
                    return "green";
                case "blue":
                    return "blue";
                case "cyan":
                    return "cyan";
                case "magenta":
                    return "blue";
                case "yellow":
                    return "green";
                default:
                    return "cyan";
            }
        case "magenta":
            switch (filter_color) {
            	case "red":
                    return "red";
                case "green":
                    return "black";
                case "blue":
                    return "blue";
                case "cyan":
                    return "blue";
                case "magenta":
                    return "magenta";
                case "yellow":
                    return "red";
                default:
                    return "magenta";
            }
        case "yellow":
            switch (filter_color) {
            	case "red":
                    return "red";
                case "green":
                    return "green";
                case "blue":
                    return "black";
                case "cyan":
                    return "green";
                case "magenta":
                    return "red";
                case "yellow":
                    return "yellow";
                default:
                    return "yellow";
            }
        default:
            switch (filter_color) {
            	case "red":
                    return "red";
                case "green":
                    return "green";
                case "blue":
                    return "blue";
                case "cyan":
                    return "cyan";
                case "magenta":
                    return "magenta";
                case "yellow":
                    return "yellow";
                default:
                    return "none";
            }
    }
}