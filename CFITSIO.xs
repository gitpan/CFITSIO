#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#ifdef __cplusplus
}
#endif

#include "fitsio.h"
#include "util.h"
#include "util.c"

static int
not_here(s)
char *s;
{
    croak("%s not implemented on this architecture", s);
    return -1;
}

static double
constant(name, arg)
char *name;
int arg;
{
    errno = 0;
    switch (*name) {
    case 'A':
	if (strEQ(name, "ANGLE_TOO_BIG"))
#ifdef ANGLE_TOO_BIG
	    return ANGLE_TOO_BIG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "ANY_HDU"))
#ifdef ANY_HDU
	    return ANY_HDU;
#else
	    goto not_there;
#endif
	if (strEQ(name, "ARRAY_TOO_BIG"))
#ifdef ARRAY_TOO_BIG
	    return ARRAY_TOO_BIG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "ASCII_TBL"))
#ifdef ASCII_TBL
	    return ASCII_TBL;
#else
	    goto not_there;
#endif
	break;
    case 'B':
	if (strEQ(name, "BAD_ATABLE_FORMAT"))
#ifdef BAD_ATABLE_FORMAT
	    return BAD_ATABLE_FORMAT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_BITPIX"))
#ifdef BAD_BITPIX
	    return BAD_BITPIX;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_BTABLE_FORMAT"))
#ifdef BAD_BTABLE_FORMAT
	    return BAD_BTABLE_FORMAT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_C2D"))
#ifdef BAD_C2D
	    return BAD_C2D;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_C2F"))
#ifdef BAD_C2F
	    return BAD_C2F;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_C2I"))
#ifdef BAD_C2I
	    return BAD_C2I;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_COL_NUM"))
#ifdef BAD_COL_NUM
	    return BAD_COL_NUM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DATATYPE"))
#ifdef BAD_DATATYPE
	    return BAD_DATATYPE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DATA_FILL"))
#ifdef BAD_DATA_FILL
	    return BAD_DATA_FILL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DATE"))
#ifdef BAD_DATE
	    return BAD_DATE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DECIM"))
#ifdef BAD_DECIM
	    return BAD_DECIM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DIMEN"))
#ifdef BAD_DIMEN
	    return BAD_DIMEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_DOUBLEKEY"))
#ifdef BAD_DOUBLEKEY
	    return BAD_DOUBLEKEY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_ELEM_NUM"))
#ifdef BAD_ELEM_NUM
	    return BAD_ELEM_NUM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_F2C"))
#ifdef BAD_F2C
	    return BAD_F2C;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_FILEPTR"))
#ifdef BAD_FILEPTR
	    return BAD_FILEPTR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_FLOATKEY"))
#ifdef BAD_FLOATKEY
	    return BAD_FLOATKEY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_GCOUNT"))
#ifdef BAD_GCOUNT
	    return BAD_GCOUNT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_GROUP_ID"))
#ifdef BAD_GROUP_ID
	    return BAD_GROUP_ID;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_HDU_NUM"))
#ifdef BAD_HDU_NUM
	    return BAD_HDU_NUM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_HEADER_FILL"))
#ifdef BAD_HEADER_FILL
	    return BAD_HEADER_FILL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_I2C"))
#ifdef BAD_I2C
	    return BAD_I2C;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_INTKEY"))
#ifdef BAD_INTKEY
	    return BAD_INTKEY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_KEYCHAR"))
#ifdef BAD_KEYCHAR
	    return BAD_KEYCHAR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_LOGICALKEY"))
#ifdef BAD_LOGICALKEY
	    return BAD_LOGICALKEY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_NAXES"))
#ifdef BAD_NAXES
	    return BAD_NAXES;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_NAXIS"))
#ifdef BAD_NAXIS
	    return BAD_NAXIS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_OPTION"))
#ifdef BAD_OPTION
	    return BAD_OPTION;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_ORDER"))
#ifdef BAD_ORDER
	    return BAD_ORDER;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_PCOUNT"))
#ifdef BAD_PCOUNT
	    return BAD_PCOUNT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_PIX_NUM"))
#ifdef BAD_PIX_NUM
	    return BAD_PIX_NUM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_ROW_NUM"))
#ifdef BAD_ROW_NUM
	    return BAD_ROW_NUM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_ROW_WIDTH"))
#ifdef BAD_ROW_WIDTH
	    return BAD_ROW_WIDTH;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_SIMPLE"))
#ifdef BAD_SIMPLE
	    return BAD_SIMPLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_TBCOL"))
#ifdef BAD_TBCOL
	    return BAD_TBCOL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_TDIM"))
#ifdef BAD_TDIM
	    return BAD_TDIM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_TFIELDS"))
#ifdef BAD_TFIELDS
	    return BAD_TFIELDS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_TFORM"))
#ifdef BAD_TFORM
	    return BAD_TFORM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_TFORM_DTYPE"))
#ifdef BAD_TFORM_DTYPE
	    return BAD_TFORM_DTYPE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_URL_PREFIX"))
#ifdef BAD_URL_PREFIX
	    return BAD_URL_PREFIX;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_WCS_PROJ"))
#ifdef BAD_WCS_PROJ
	    return BAD_WCS_PROJ;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BAD_WCS_VAL"))
#ifdef BAD_WCS_VAL
	    return BAD_WCS_VAL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BINARY_TBL"))
#ifdef BINARY_TBL
	    return BINARY_TBL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "BYTE_IMG"))
#ifdef BYTE_IMG
	    return BYTE_IMG;
#else
	    goto not_there;
#endif
	break;
    case 'C':
	if (strEQ(name, "CASEINSEN"))
#ifdef CASEINSEN
	    return CASEINSEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "CASESEN"))
#ifdef CASESEN
	    return CASESEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "COL_NOT_FOUND"))
#ifdef COL_NOT_FOUND
	    return COL_NOT_FOUND;
#else
	    goto not_there;
#endif
	if (strEQ(name, "COL_NOT_UNIQUE"))
#ifdef COL_NOT_UNIQUE
	    return COL_NOT_UNIQUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "COL_TOO_WIDE"))
#ifdef COL_TOO_WIDE
	    return COL_TOO_WIDE;
#else
	    goto not_there;
#endif
	break;
    case 'D':
	if (strEQ(name, "DOUBLENULLVALUE"))
#ifdef DOUBLENULLVALUE
	    return DOUBLENULLVALUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "DOUBLE_IMG"))
#ifdef DOUBLE_IMG
	    return DOUBLE_IMG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "DRIVER_INIT_FAILED"))
#ifdef DRIVER_INIT_FAILED
	    return DRIVER_INIT_FAILED;
#else
	    goto not_there;
#endif
	break;
    case 'E':
	if (strEQ(name, "END_JUNK"))
#ifdef END_JUNK
	    return END_JUNK;
#else
	    goto not_there;
#endif
	if (strEQ(name, "END_OF_FILE"))
#ifdef END_OF_FILE
	    return END_OF_FILE;
#else
	    goto not_there;
#endif
	break;
    case 'F':
	if (strEQ(name, "FALSE"))
#ifdef FALSE
	    return FALSE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FILE_NOT_CLOSED"))
#ifdef FILE_NOT_CLOSED
	    return FILE_NOT_CLOSED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FILE_NOT_CREATED"))
#ifdef FILE_NOT_CREATED
	    return FILE_NOT_CREATED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FILE_NOT_OPENED"))
#ifdef FILE_NOT_OPENED
	    return FILE_NOT_OPENED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_CARD"))
#ifdef FLEN_CARD
	    return FLEN_CARD;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_COMMENT"))
#ifdef FLEN_COMMENT
	    return FLEN_COMMENT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_ERRMSG"))
#ifdef FLEN_ERRMSG
	    return FLEN_ERRMSG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_FILENAME"))
#ifdef FLEN_FILENAME
	    return FLEN_FILENAME;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_KEYWORD"))
#ifdef FLEN_KEYWORD
	    return FLEN_KEYWORD;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_STATUS"))
#ifdef FLEN_STATUS
	    return FLEN_STATUS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLEN_VALUE"))
#ifdef FLEN_VALUE
	    return FLEN_VALUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLOATNULLVALUE"))
#ifdef FLOATNULLVALUE
	    return FLOATNULLVALUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "FLOAT_IMG"))
#ifdef FLOAT_IMG
	    return FLOAT_IMG;
#else
	    goto not_there;
#endif
	break;
    case 'G':
	if (strEQ(name, "GROUP_NOT_FOUND"))
#ifdef GROUP_NOT_FOUND
	    return GROUP_NOT_FOUND;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_ALL"))
#ifdef GT_ID_ALL
	    return GT_ID_ALL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_ALL_URI"))
#ifdef GT_ID_ALL_URI
	    return GT_ID_ALL_URI;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_POS"))
#ifdef GT_ID_POS
	    return GT_ID_POS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_POS_URI"))
#ifdef GT_ID_POS_URI
	    return GT_ID_POS_URI;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_REF"))
#ifdef GT_ID_REF
	    return GT_ID_REF;
#else
	    goto not_there;
#endif
	if (strEQ(name, "GT_ID_REF_URI"))
#ifdef GT_ID_REF_URI
	    return GT_ID_REF_URI;
#else
	    goto not_there;
#endif
	break;
    case 'H':
	if (strEQ(name, "HDU_ALREADY_MEMBER"))
#ifdef HDU_ALREADY_MEMBER
	    return HDU_ALREADY_MEMBER;
#else
	    goto not_there;
#endif
	if (strEQ(name, "HDU_ALREADY_TRACKED"))
#ifdef HDU_ALREADY_TRACKED
	    return HDU_ALREADY_TRACKED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "HEADER_NOT_EMPTY"))
#ifdef HEADER_NOT_EMPTY
	    return HEADER_NOT_EMPTY;
#else
	    goto not_there;
#endif
	break;
    case 'I':
	if (strEQ(name, "IDENTICAL_POINTERS"))
#ifdef IDENTICAL_POINTERS
	    return IDENTICAL_POINTERS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "IMAGE_HDU"))
#ifdef IMAGE_HDU
	    return IMAGE_HDU;
#else
	    goto not_there;
#endif
	if (strEQ(name, "InputCol"))
#ifdef InputCol
	    return InputCol;
#else
	    goto not_there;
#endif
	if (strEQ(name, "InputOutputCol"))
#ifdef InputOutputCol
	    return InputOutputCol;
#else
	    goto not_there;
#endif
	break;
    case 'J':
	break;
    case 'K':
	if (strEQ(name, "KEY_NO_EXIST"))
#ifdef KEY_NO_EXIST
	    return KEY_NO_EXIST;
#else
	    goto not_there;
#endif
	if (strEQ(name, "KEY_OUT_BOUNDS"))
#ifdef KEY_OUT_BOUNDS
	    return KEY_OUT_BOUNDS;
#else
	    goto not_there;
#endif
	break;
    case 'L':
	if (strEQ(name, "LONG_IMG"))
#ifdef LONG_IMG
	    return LONG_IMG;
#else
	    goto not_there;
#endif
	break;
    case 'M':
	if (strEQ(name, "MAXHDU"))
#ifdef MAXHDU
	    return MAXHDU;
#else
	    goto not_there;
#endif
	if (strEQ(name, "MEMBER_NOT_FOUND"))
#ifdef MEMBER_NOT_FOUND
	    return MEMBER_NOT_FOUND;
#else
	    goto not_there;
#endif
	if (strEQ(name, "MEMORY_ALLOCATION"))
#ifdef MEMORY_ALLOCATION
	    return MEMORY_ALLOCATION;
#else
	    goto not_there;
#endif
	break;
    case 'N':
	if (strEQ(name, "NEG_AXIS"))
#ifdef NEG_AXIS
	    return NEG_AXIS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NEG_BYTES"))
#ifdef NEG_BYTES
	    return NEG_BYTES;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NEG_FILE_POS"))
#ifdef NEG_FILE_POS
	    return NEG_FILE_POS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NEG_ROWS"))
#ifdef NEG_ROWS
	    return NEG_ROWS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NEG_WIDTH"))
#ifdef NEG_WIDTH
	    return NEG_WIDTH;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_ASCII_COL"))
#ifdef NOT_ASCII_COL
	    return NOT_ASCII_COL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_ATABLE"))
#ifdef NOT_ATABLE
	    return NOT_ATABLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_BTABLE"))
#ifdef NOT_BTABLE
	    return NOT_BTABLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_GROUP_TABLE"))
#ifdef NOT_GROUP_TABLE
	    return NOT_GROUP_TABLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_IMAGE"))
#ifdef NOT_IMAGE
	    return NOT_IMAGE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_LOGICAL_COL"))
#ifdef NOT_LOGICAL_COL
	    return NOT_LOGICAL_COL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_POS_INT"))
#ifdef NOT_POS_INT
	    return NOT_POS_INT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_TABLE"))
#ifdef NOT_TABLE
	    return NOT_TABLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NOT_VARI_LEN"))
#ifdef NOT_VARI_LEN
	    return NOT_VARI_LEN;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_BITPIX"))
#ifdef NO_BITPIX
	    return NO_BITPIX;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_END"))
#ifdef NO_END
	    return NO_END;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_GCOUNT"))
#ifdef NO_GCOUNT
	    return NO_GCOUNT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_MATCHING_DRIVER"))
#ifdef NO_MATCHING_DRIVER
	    return NO_MATCHING_DRIVER;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_NAXES"))
#ifdef NO_NAXES
	    return NO_NAXES;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_NAXIS"))
#ifdef NO_NAXIS
	    return NO_NAXIS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_NULL"))
#ifdef NO_NULL
	    return NO_NULL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_PCOUNT"))
#ifdef NO_PCOUNT
	    return NO_PCOUNT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_QUOTE"))
#ifdef NO_QUOTE
	    return NO_QUOTE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_SIMPLE"))
#ifdef NO_SIMPLE
	    return NO_SIMPLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_TBCOL"))
#ifdef NO_TBCOL
	    return NO_TBCOL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_TFIELDS"))
#ifdef NO_TFIELDS
	    return NO_TFIELDS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_TFORM"))
#ifdef NO_TFORM
	    return NO_TFORM;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_WCS_KEY"))
#ifdef NO_WCS_KEY
	    return NO_WCS_KEY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NO_XTENSION"))
#ifdef NO_XTENSION
	    return NO_XTENSION;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NULL_INPUT_PTR"))
#ifdef NULL_INPUT_PTR
	    return NULL_INPUT_PTR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "NUM_OVERFLOW"))
#ifdef NUM_OVERFLOW
	    return NUM_OVERFLOW;
#else
	    goto not_there;
#endif
	break;
    case 'O':
	if (strEQ(name, "OPT_CMT_MBR"))
#ifdef OPT_CMT_MBR
	    return OPT_CMT_MBR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_CMT_MBR_DEL"))
#ifdef OPT_CMT_MBR_DEL
	    return OPT_CMT_MBR_DEL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_GCP_ALL"))
#ifdef OPT_GCP_ALL
	    return OPT_GCP_ALL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_GCP_GPT"))
#ifdef OPT_GCP_GPT
	    return OPT_GCP_GPT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_GCP_MBR"))
#ifdef OPT_GCP_MBR
	    return OPT_GCP_MBR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MCP_ADD"))
#ifdef OPT_MCP_ADD
	    return OPT_MCP_ADD;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MCP_MOV"))
#ifdef OPT_MCP_MOV
	    return OPT_MCP_MOV;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MCP_NADD"))
#ifdef OPT_MCP_NADD
	    return OPT_MCP_NADD;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MCP_REPL"))
#ifdef OPT_MCP_REPL
	    return OPT_MCP_REPL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MRG_COPY"))
#ifdef OPT_MRG_COPY
	    return OPT_MRG_COPY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_MRG_MOV"))
#ifdef OPT_MRG_MOV
	    return OPT_MRG_MOV;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_RM_ALL"))
#ifdef OPT_RM_ALL
	    return OPT_RM_ALL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_RM_ENTRY"))
#ifdef OPT_RM_ENTRY
	    return OPT_RM_ENTRY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_RM_GPT"))
#ifdef OPT_RM_GPT
	    return OPT_RM_GPT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OPT_RM_MBR"))
#ifdef OPT_RM_MBR
	    return OPT_RM_MBR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OVERFLOW_ERR"))
#ifdef OVERFLOW_ERR
	    return OVERFLOW_ERR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "OutputCol"))
#ifdef OutputCol
	    return OutputCol;
#else
	    goto not_there;
#endif
	break;
    case 'P':
	if (strEQ(name, "PARSE_BAD_COL"))
#ifdef PARSE_BAD_COL
	    return PARSE_BAD_COL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "PARSE_BAD_OUTPUT"))
#ifdef PARSE_BAD_OUTPUT
	    return PARSE_BAD_OUTPUT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "PARSE_BAD_TYPE"))
#ifdef PARSE_BAD_TYPE
	    return PARSE_BAD_TYPE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "PARSE_LRG_VECTOR"))
#ifdef PARSE_LRG_VECTOR
	    return PARSE_LRG_VECTOR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "PARSE_NO_OUTPUT"))
#ifdef PARSE_NO_OUTPUT
	    return PARSE_NO_OUTPUT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "PARSE_SYNTAX_ERR"))
#ifdef PARSE_SYNTAX_ERR
	    return PARSE_SYNTAX_ERR;
#else
	    goto not_there;
#endif
	break;
    case 'Q':
	break;
    case 'R':
	if (strEQ(name, "READONLY"))
#ifdef READONLY
	    return READONLY;
#else
	    goto not_there;
#endif
	if (strEQ(name, "READONLY_FILE"))
#ifdef READONLY_FILE
	    return READONLY_FILE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "READWRITE"))
#ifdef READWRITE
	    return READWRITE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "READ_ERROR"))
#ifdef READ_ERROR
	    return READ_ERROR;
#else
	    goto not_there;
#endif
	break;
    case 'S':
	if (strEQ(name, "SAME_FILE"))
#ifdef SAME_FILE
	    return SAME_FILE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SEEK_ERROR"))
#ifdef SEEK_ERROR
	    return SEEK_ERROR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "SHORT_IMG"))
#ifdef SHORT_IMG
	    return SHORT_IMG;
#else
	    goto not_there;
#endif
	break;
    case 'T':
	if (strEQ(name, "TBIT"))
#ifdef TBIT
	    return TBIT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TBYTE"))
#ifdef TBYTE
	    return TBYTE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TCOMPLEX"))
#ifdef TCOMPLEX
	    return TCOMPLEX;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TDBLCOMPLEX"))
#ifdef TDBLCOMPLEX
	    return TDBLCOMPLEX;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TDOUBLE"))
#ifdef TDOUBLE
	    return TDOUBLE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TFLOAT"))
#ifdef TFLOAT
	    return TFLOAT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TINT"))
#ifdef TINT
	    return TINT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TLOGICAL"))
#ifdef TLOGICAL
	    return TLOGICAL;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TLONG"))
#ifdef TLONG
	    return TLONG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TOO_MANY_DRIVERS"))
#ifdef TOO_MANY_DRIVERS
	    return TOO_MANY_DRIVERS;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TOO_MANY_FILES"))
#ifdef TOO_MANY_FILES
	    return TOO_MANY_FILES;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TOO_MANY_HDUS_TRACKED"))
#ifdef TOO_MANY_HDUS_TRACKED
	    return TOO_MANY_HDUS_TRACKED;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TRUE"))
#ifdef TRUE
	    return TRUE;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TSHORT"))
#ifdef TSHORT
	    return TSHORT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TSTRING"))
#ifdef TSTRING
	    return TSTRING;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TUINT"))
#ifdef TUINT
	    return TUINT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TULONG"))
#ifdef TULONG
	    return TULONG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "TUSHORT"))
#ifdef TUSHORT
	    return TUSHORT;
#else
	    goto not_there;
#endif
	break;
    case 'U':
	if (strEQ(name, "ULONG_IMG"))
#ifdef ULONG_IMG
	    return ULONG_IMG;
#else
	    goto not_there;
#endif
	if (strEQ(name, "UNKNOWN_EXT"))
#ifdef UNKNOWN_EXT
	    return UNKNOWN_EXT;
#else
	    goto not_there;
#endif
	if (strEQ(name, "UNKNOWN_REC"))
#ifdef UNKNOWN_REC
	    return UNKNOWN_REC;
#else
	    goto not_there;
#endif
	if (strEQ(name, "URL_PARSE_ERROR"))
#ifdef URL_PARSE_ERROR
	    return URL_PARSE_ERROR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "USE_MEM_BUFF"))
#ifdef USE_MEM_BUFF
	    return USE_MEM_BUFF;
#else
	    goto not_there;
#endif
	if (strEQ(name, "USHORT_IMG"))
#ifdef USHORT_IMG
	    return USHORT_IMG;
#else
	    goto not_there;
#endif
	break;
    case 'V':
	if (strEQ(name, "VALIDSTRUC"))
#ifdef VALIDSTRUC
	    return VALIDSTRUC;
#else
	    goto not_there;
#endif
	if (strEQ(name, "VALUE_UNDEFINED"))
#ifdef VALUE_UNDEFINED
	    return VALUE_UNDEFINED;
#else
	    goto not_there;
#endif
	break;
    case 'W':
	if (strEQ(name, "WCS_ERROR"))
#ifdef WCS_ERROR
	    return WCS_ERROR;
#else
	    goto not_there;
#endif
	if (strEQ(name, "WRITE_ERROR"))
#ifdef WRITE_ERROR
	    return WRITE_ERROR;
#else
	    goto not_there;
#endif
	break;
    case 'X':
	break;
    case 'Y':
	break;
    case 'Z':
	if (strEQ(name, "ZERO_SCALE"))
#ifdef ZERO_SCALE
	    return ZERO_SCALE;
#else
	    goto not_there;
#endif
	break;
    }
    errno = EINVAL;
    return 0;

not_there:
    errno = ENOENT;
    return 0;
}


MODULE = CFITSIO		PACKAGE = CFITSIO		

double
constant(name,arg)
	char *		name
	int		arg

int
PerlyUnpacking(value)
	int value

int
ffgtam(gfptr,mfptr,hdupos,status)
	fitsfile * gfptr
	fitsfile * mfptr
	int hdupos
	int &status
	ALIAS:
		CFITSIO::fits_add_group_member = 1
		fitsfilePtr::add_group_member = 2
	OUTPUT:
		status

int
ffasfm(tform,typecode,width,decimals,status)
	char * tform
	int &typecode = NO_INIT
	long &width = NO_INIT
	int &decimals = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_ascii_tform = 1
	OUTPUT:
		typecode
		width
		decimals
		status

int
ffbnfm(tform,typecode,repeat,width,status)
	char * tform
	int &typecode = NO_INIT
	long &repeat  = NO_INIT
	long &width = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_binary_tform = 1
	OUTPUT:
		typecode
		repeat
		width
		status

int
ffcrow(fptr,datatype,expr,firstrow,nelements,nulval,array,anynul,status)
	fitsfile * fptr
	int datatype
	char * expr
	long firstrow
	long nelements
	SV * nulval
	void * array = NO_INIT
	int anynul = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_calc_rows = 1
		fitsfilePtr::calc_rows = 2
	CODE:
		array = get_mortalspace(nelements,datatype);
		RETVAL=ffcrow(fptr,datatype,expr,firstrow,nelements,packND(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(6),array,nelements,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgtch(gfptr,grouptype,status)
	fitsfile * gfptr
	int grouptype
	int &status
	ALIAS:
		CFITSIO::fits_change_group = 1
		fitsfilePtr::change_group = 2
	OUTPUT:
		status

void
ffcmsg()
	ALIAS:
		CFITSIO::fits_clear_errmsg = 1

int
ffclos(fptr, status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_close_file = 1
		fitsfilePtr::close_file = 2
	OUTPUT:
		status

int
ffgtcm(gfptr,cmopt,status)
	fitsfile * gfptr
	int cmopt
	int &status
	ALIAS:
		CFITSIO::fits_compact_group = 1
		fitsfilePtr::compact_group = 2
	OUTPUT:
		status

void
ffcmps(templt,string,casesen,match,exact)
	char * templt
	char * string
	int casesen
	int &match
	int &exact
	ALIAS:
		CFITSIO::fits_compare_str = 1
	OUTPUT:
		match
		exact

int
ffcpcl(infptr,outfptr,incolnum,outcolnum,create_col,status)
	fitsfile * infptr
	fitsfile * outfptr
	int incolnum
	int outcolnum
	int create_col
	int &status
	ALIAS:
		CFITSIO::fits_copy_col = 1
		fitsfilePtr::copy_col = 2
	OUTPUT:
		status

int
ffcpdt(infptr,outfptr,status)
	fitsfile * infptr
	fitsfile * outfptr
	int &status
	ALIAS:
		CFITSIO::fits_copy_data = 1
		fitsfilePtr::copy_data = 2
	OUTPUT:
		status

int
ffgtcp(infptr,outfptr,cpopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	int cpopt
	int &status
	ALIAS:
		CFITSIO::fits_copy_group = 1
		fitsfilePtr::copy_group = 2
	OUTPUT:
		status

int
ffcopy(infptr,outfptr,morekeys,status)
	fitsfile * infptr
	fitsfile * outfptr
	int morekeys
	int &status
	ALIAS:
		CFITSIO::fits_copy_hdu = 1
		fitsfilePtr::copy_hdu = 2
	OUTPUT:
		status

int
ffcphd(infptr,outfptr,status)
	fitsfile * infptr
	fitsfile * outfptr
	int &status
	ALIAS:
		CFITSIO::fits_copy_header = 1
		fitsfilePtr::copy_header = 2
	OUTPUT:
		status

int
ffcpky(infptr,outfptr,innum,outnum,keyroot,status)
	fitsfile * infptr
	fitsfile * outfptr
	int innum
	int outnum
	char * keyroot
	int &status
	ALIAS:
		CFITSIO::fits_copy_key = 1
		fitsfilePtr::copy_key = 2
	OUTPUT:
		status

int
ffgmcp(gfptr,mfptr,member,cpopt,status)
	fitsfile * gfptr
	fitsfile * mfptr
	long member
	int cpopt
	int &status
	ALIAS:
		CFITSIO::fits_copy_member = 1
		fitsfilePtr::copy_member = 2
	OUTPUT:
		status

fitsfile *
create_file(name,status)
	char * name
	int status
	PREINIT:
		fitsfile * fptr;
	CODE:
		ffinit(&fptr,name,&status);
		RETVAL = fptr;
	OUTPUT:
		RETVAL
		status

int
ffinit(fptr,name,status)
	fitsfile * &fptr = NO_INIT
	char * name
	int &status
	ALIAS:
		CFITSIO::fits_create_file = 1
	OUTPUT:
		fptr
		status

int
ffgtcr(fptr,grpname,grouptype,status)
	fitsfile * fptr
	char * grpname
	int grouptype
	int &status
	ALIAS:
		CFITSIO::fits_create_group = 1
		fitsfilePtr::create_group = 2
	OUTPUT:
		status

int
ffcrhd(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_create_hdu = 1
		fitsfilePtr::create_hdu = 2
	OUTPUT:
		status

int
ffcrim(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	ALIAS:
		CFITSIO::fits_create_img = 1
		fitsfilePtr::create_img = 2
	OUTPUT:
		status

int
ffcrtb(fptr,tbltype,naxis2,tfields,ttype,tform,tunit,extname,status)
	fitsfile * fptr
	int tbltype
	long naxis2
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	int &status
	ALIAS:
		CFITSIO::fits_create_tbl = 1
		fitsfilePtr::create_tbl = 2
	OUTPUT:
		status

fitsfile *
create_template(filename,tpltfile,status)
	char * filename
	char * tpltfile
	int status
	PREINIT:
		fitsfile * fptr;
	CODE:
		fftplt(&fptr,filename,tpltfile,&status);
		RETVAL = fptr;
	OUTPUT:
		RETVAL
		status

int
fftplt(fptr,filename,tpltfile,status)
	fitsfile * &fptr = NO_INIT
	char * filename
	char * tpltfile
	int &status
	ALIAS:
		CFITSIO::fits_create_template = 1
	OUTPUT:
		fptr
		status

int
ffdt2s(year,month,day,datestr,status)
	int year
	int month
	int day
	char * datestr = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_date2str = 1
	CODE:
		datestr = get_mortalspace(11,TBYTE); /* YYYY-MM-DD or dd/mm/yy */
		RETVAL=ffdt2s(year,month,day,datestr,&status);
	OUTPUT:
		datestr
		status
		RETVAL

unsigned long
ffdsum(ascii,complm,sum)
	char * ascii
	int complm
	unsigned long &sum
	ALIAS:
		CFITSIO::fits_decode_chksum = 1
	OUTPUT:
		sum

int
ffdcol(fptr,colnum,status)
	fitsfile * fptr
	int colnum
	int &status
	ALIAS:
		CFITSIO::fits_delete_col = 1
		fitsfilePtr::delete_col = 2
	OUTPUT:
		status

int
ffdelt(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_delete_file = 1
		fitsfilePtr::delete_file = 2
	OUTPUT:
		status

int
ffdhdu(fptr,hdutype,status)
	fitsfile * fptr
	int &hdutype
	int &status
	ALIAS:
		CFITSIO::fits_delete_hdu = 1
		fitsfilePtr::delete_hdu = 2
	OUTPUT:
		hdutype
		status

int
ffdkey(fptr,keyname,status)
	fitsfile * fptr
	char * keyname
	int &status
	ALIAS:
		CFITSIO::fits_delete_key = 1
		fitsfilePtr::delete_key = 2
	OUTPUT:
		status

int
ffdrec(fptr,keynum,status)
	fitsfile * fptr
	int keynum
	int &status
	ALIAS:
		CFITSIO::fits_delete_record  = 1
		fitsfilePtr::delete_record  = 2
	OUTPUT:
		status

int
ffdrws(fptr,rowlist,nrows,status)
	fitsfile * fptr
	long * rowlist
	long nrows
	int &status
	ALIAS:
		CFITSIO::fits_delete_rowlist = 1
		fitsfilePtr::delete_rowlist = 2
	OUTPUT:
		status

int
ffdrow(fptr,firstrow,nrows,status)
	fitsfile * fptr
	long firstrow
	long nrows
	int &status
	ALIAS:
		CFITSIO::fits_delete_rows = 1
		fitsfilePtr::delete_rows = 2
	OUTPUT:
		status

void
ffesum(sum,complm,ascii)
	unsigned long sum
	int complm
	char * ascii = NO_INIT
	ALIAS:
		CFITSIO::fits_encode_chksum = 1
	CODE:
		ascii = get_mortalspace(17,TBYTE);
		ffesum(sum,complm,ascii);
	OUTPUT:
		ascii

int
ffflmd(fptr,iomode,status)
	fitsfile * fptr
	int &iomode
	int &status
	ALIAS:
		CFITSIO::fits_file_mode = 1
		fitsfilePtr::file_mode = 2
	OUTPUT:
		iomode
		status

int
ffflnm(fptr,filename,status)
	fitsfile * fptr
	char * filename = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_file_name = 1
		fitsfilePtr::file_name = 2
	CODE:
		filename = get_mortalspace(FLEN_FILENAME,TBYTE);
		RETVAL=ffflnm(fptr,filename,&status);
	OUTPUT:
		filename
		status
		RETVAL

int
ffgnxk(fptr,inclist,ninc,exclist,nexc,card,status)
	fitsfile * fptr
	char ** inclist
	int ninc
	char ** exclist
	int nexc
	char * card = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_find_nextkey = 1
		fitsfilePtr::find_nextkey = 2
	CODE:
		card = get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=ffgnxk(fptr,inclist,ninc,exclist,nexc,card,&status);
	OUTPUT:
		card
		status
		RETVAL

int
fffrow(fptr,expr,firstrow,nrows,n_good_rows,row_status,status)
	fitsfile * fptr
	char * expr
	long firstrow
	long nrows
	long n_good_rows = NO_INIT
	char * row_status = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_find_rows = 1
		fitsfilePtr::find_rows = 2
	CODE:
		row_status = get_mortalspace(nrows,TLOGICAL);
		RETVAL=fffrow(fptr,expr,firstrow,nrows,&n_good_rows,row_status,&status);
		unpack1D(ST(5),row_status,nrows,TLOGICAL);
	OUTPUT:
		n_good_rows
		row_status
		status
		RETVAL

int
ffflus(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_flush_file = 1
		fitsfilePtr::flush_file = 2
	OUTPUT:
		status

int
ffgacl(fptr,colnum,ttype,tbcol,tunit,tform,scale,zero,nulstr,tdisp,status)
	fitsfile * fptr
	int colnum
	char * ttype = NO_INIT
	long tbcol = NO_INIT
	char * tunit = NO_INIT
	char * tform = NO_INIT
	double scale = NO_INIT
	double zero = NO_INIT
	char * nulstr = NO_INIT
	char * tdisp = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_get_acolparms = 1
		fitsfilePtr::get_acolparms = 2
	CODE:
		ttype = get_mortalspace(FLEN_VALUE,TBYTE);
		tunit = get_mortalspace(FLEN_VALUE,TBYTE);
		tform = get_mortalspace(FLEN_VALUE,TBYTE);
		nulstr = get_mortalspace(FLEN_VALUE,TBYTE);
		tdisp = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgacl(fptr,colnum,ttype,&tbcol,tunit,tform,&scale,&zero,nulstr,tdisp,&status);
	OUTPUT:
		ttype
		tbcol
		tunit
		tform
		scale
		zero
		nulstr
		tdisp
		status
		RETVAL

int
ffgbcl(fptr,colnum,ttype,tunit,dtype,repeat,scale,zero,nulval,tdisp,status)
	fitsfile * fptr
	int colnum
	char * ttype = NO_INIT
	char * tunit = NO_INIT
	char * dtype = NO_INIT
	long repeat = NO_INIT
	double scale = NO_INIT
	double zero = NO_INIT
	long nulval = NO_INIT
	char * tdisp = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_get_bcolparms = 1
		fitsfilePtr::get_bcolparms = 2
	CODE:
		ttype = get_mortalspace(FLEN_VALUE,TBYTE);
		tunit = get_mortalspace(FLEN_VALUE,TBYTE);
		tdisp = get_mortalspace(FLEN_VALUE,TBYTE);
		dtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgbcl(fptr,colnum,ttype,tunit,dtype,&repeat,&scale,&zero,&nulval,tdisp,&status);
	OUTPUT:
		ttype
		tunit
		dtype
		repeat
		scale
		zero
		nulval
		tdisp
		status
		RETVAL

int
ffgcks(fptr,datasum,hdusum,status)
	fitsfile * fptr
	unsigned long &datasum = NO_INIT
	unsigned long &hdusum = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_chksum = 1
		fitsfilePtr::get_chksum = 2
	OUTPUT:
		datasum
		hdusum
		status

int
ffgcno(fptr,casesen,templt,colnum,status)
	fitsfile * fptr
	int casesen
	char * templt
	int &colnum = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_colnum = 1
		fitsfilePtr::get_colnum = 2
	OUTPUT:
		colnum
		status

int
ffgcnn(fptr,casesen,templt,colname,colnum,status)
	fitsfile * fptr
	int casesen
	char * templt
	char * colname = NO_INIT
	int colnum = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_get_colname = 1
		fitsfilePtr::get_colname = 2
	CODE:
		colname = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgcnn(fptr,casesen,templt,colname,&colnum,&status);
	OUTPUT:
		colname
		colnum
		status
		RETVAL

int
ffgtcl(fptr,colnum,typecode,repeat,width,status)
	fitsfile * fptr
	int colnum
	int &typecode = NO_INIT
	long &repeat = NO_INIT
	long &width = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_coltype = 1
		fitsfilePtr::get_coltype = 2
	OUTPUT:
		typecode
		repeat
		width
		status

void
ffgerr(status,err_text)
	int status
	char * err_text = NO_INIT
	ALIAS:
		CFITSIO::fits_get_errstatus = 1
	CODE:
		err_text = get_mortalspace(FLEN_ERRMSG,TBYTE);
		ffgerr(status,err_text);
	OUTPUT:
		err_text

int
ffghps(fptr,keysexist,keynum,status)
	fitsfile * fptr
	int &keysexist = NO_INIT
	int &keynum = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_hdrpos = 1
		fitsfilePtr::get_hdrpos = 2
	OUTPUT:
		keysexist
		keynum
		status

int
ffghsp(fptr,keysexist,morekeys,status)
	fitsfile * fptr
	int &keysexist = NO_INIT
	int &morekeys = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_hdrspace = 1
		fitsfilePtr::get_hdrspace = 2
	OUTPUT:
		keysexist
		morekeys
		status

int 
ffghdn(fptr,hdunum)
	fitsfile * fptr
	int &hdunum = NO_INIT
	ALIAS:
		CFITSIO::fits_get_hdu_num = 1
		fitsfilePtr::get_hdu_num = 2
	OUTPUT:
		hdunum

int
ffghdt(fptr,hdutype,status)
	fitsfile * fptr
	int &hdutype = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_hdu_type = 1
		fitsfilePtr::get_hdu_type = 2
	OUTPUT:
		hdutype
		status

int
ffghad(fptr,headstart,datastart,dataend,status)
	fitsfile * fptr
	long &headstart = NO_INIT
	long &datastart = NO_INIT
	long &dataend = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_hduaddr = 1
		fitsfilePtr::get_hduaddr = 2
	OUTPUT:
		headstart
		datastart
		dataend
		status

int
ffdtyp(value,dtype,status)
	char * value
	char &dtype = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_keytype = 1
	OUTPUT:
		dtype
		status

int
ffgncl(fptr,ncols,status)
	fitsfile * fptr
	int &ncols = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_num_cols = 1
		fitsfilePtr::get_num_cols = 2
	OUTPUT:
		ncols
		status

int
ffgmng(mfptr,nmembers,status)
	fitsfile * mfptr
	long &nmembers = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_num_groups = 1
		fitsfilePtr::get_num_groups = 2
	OUTPUT:
		nmembers
		status

int
ffthdu(fptr,hdunum,status)
	fitsfile * fptr
	int &hdunum = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_num_hdus = 1
		fitsfilePtr::get_num_hdus = 2
	OUTPUT:
		hdunum
		status

int
ffgtnm(gfptr,nmembers,status)
	fitsfile * gfptr
	long &nmembers = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_num_members = 1
		fitsfilePtr::get_num_members = 2
	OUTPUT:
		nmembers
		status

int
ffgnrw(fptr,nrows,status)
	fitsfile * fptr
	long &nrows = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_num_rows = 1
		fitsfilePtr::get_num_rows = 2
	OUTPUT:
		nrows
		status

int
ffgrsz(fptr,nrows,status)
	fitsfile * fptr
	long &nrows = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_get_rowsize = 1
		fitsfilePtr::get_rowsize = 2
	OUTPUT:
		nrows
		status

int
ffgstm(timestr,timeref,status)
	char * timestr = NO_INIT
	int timeref = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_get_system_time = 1
	CODE:
		timestr = get_mortalspace(20,TBYTE); /* YYYY-MM-DDThh:mm:ss */
		RETVAL=ffgstm(timestr,&timeref,&status);
	OUTPUT:
		timestr
		timeref
		status
		RETVAL

int
ffgabc(tfields,tform,space,rowlen,tbcol,status)
	int tfields
	char ** tform
	int space
	long rowlen = NO_INIT
	long * tbcol = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_get_tbcol = 1
	CODE:
		tbcol = get_mortalspace(tfields,TLONG);
		RETVAL=ffgabc(tfields,tform,space,&rowlen,tbcol,&status);
		unpack1D(ST(4),tbcol,tfields,TLONG);
	OUTPUT:
		rowlen
		status
		RETVAL

float
ffvers(version)
	float &version = NO_INIT
	ALIAS:
		CFITSIO::fits_get_version = 1
	OUTPUT:
		version

int
ffitab(fptr,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
	fitsfile * fptr
	long rowlen
	long nrows
	int tfields
	char ** ttype
	long * tbcol
	char ** tform
	char ** tunit
	char * extname
	int &status
	ALIAS:
		CFITSIO::fits_insert_atbl = 1
		fitsfilePtr::insert_atbl = 2
	OUTPUT:
		status

int
ffibin(fptr,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	long nrows 
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	long pcount
	int &status
	ALIAS:
		CFITSIO::fits_insert_btbl = 1
		fitsfilePtr::insert_btbl = 2
	OUTPUT:
		status

int
fficol(fptr,colnum,ttype,tform,status)
	fitsfile * fptr
	int colnum
	char * ttype
	char * tform
	int &status
	ALIAS:
		CFITSIO::fits_insert_col = 1
		fitsfilePtr::insert_col = 2
	OUTPUT:
		status

int
fficls(fptr,colnum,ncols,ttype,tform,status)
	fitsfile * fptr
	int colnum
	int ncols
	char ** ttype
	char ** tform
	int &status
	ALIAS:
		CFITSIO::fits_insert_cols = 1
		fitsfilePtr::insert_cols = 2
	OUTPUT:
		status

int
ffgtis(fptr,grpname,grouptype,status)
	fitsfile * fptr
	char * grpname
	int grouptype
	int &status
	ALIAS:
		CFITSIO::fits_insert_group = 1
		fitsfilePtr::insert_group = 2
	OUTPUT:
		status

int
ffiimg(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	ALIAS:
		CFITSIO::fits_insert_img = 1
		fitsfilePtr::insert_img = 2
	OUTPUT:
		status

int
ffikyu(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_null = 1
		fitsfilePtr::insert_key_null = 2
	OUTPUT:
		status

int
ffikys(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_str = 1
		fitsfilePtr::insert_key_str = 2
	OUTPUT:
		status

int
ffikyl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_log = 1
		fitsfilePtr::insert_key_log = 2
	OUTPUT:
		status

int
ffikyj(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_lng = 1
		fitsfilePtr::insert_key_lng = 2
	OUTPUT:
		status

int
ffikye(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_flt = 1
		fitsfilePtr::insert_key_flt = 2
	OUTPUT:
		status

int
ffikyf(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_fixflt = 1
		fitsfilePtr::insert_key_fixflt = 2
	OUTPUT:
		status

int
ffikyd(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_dbl = 1
		fitsfilePtr::insert_key_dbl = 2
	OUTPUT:
		status

int
ffikyg(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_fixdbl = 1
		fitsfilePtr::insert_key_fixdbl = 2
	OUTPUT:
		status

int
ffikyc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_cmp = 1
		fitsfilePtr::insert_key_cmp = 2
	OUTPUT:
		status

int
ffikfc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_fixcmp = 1
		fitsfilePtr::insert_key_fixcmp = 2
	OUTPUT:
		status

int
ffikym(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_dblcmp = 1
		fitsfilePtr::insert_key_dblcmp = 2
	OUTPUT:
		status

int
ffikfm(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_insert_key_fixdblcmp = 1
		fitsfilePtr::insert_key_fixdblcmp = 2
	OUTPUT:
		status

int
ffirec(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_insert_record = 1
		fitsfilePtr::insert_record = 2
	OUTPUT:
		status

int
ffirow(fptr,firstrow,nrows,status)
	fitsfile * fptr
	long firstrow
	long nrows
	int &status
	ALIAS:
		CFITSIO::fits_insert_rows = 1
		fitsfilePtr::insert_rows = 2
	OUTPUT:
		status

int
ffkeyn(keyroot,value,keyname,status)
	char * keyroot
	int value
	char * keyname = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_make_keyn = 1
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		RETVAL=ffkeyn(keyroot,value,keyname,&status);
	OUTPUT:
		keyname
		status
		RETVAL

int
ffnkey(value,keyroot,keyname,status)
	int value
	char * keyroot
	char * keyname = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_make_nkey = 1
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		RETVAL=ffnkey(value,keyroot,keyname,&status);
	OUTPUT:
		keyname
		status
		RETVAL

int
ffgtmg(infptr,outfptr,mgopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	int mgopt
	int &status
	ALIAS:
		CFITSIO::fits_merge_groups = 1
		fitsfilePtr::merge_groups = 2
	OUTPUT:
		status

int
ffmcrd(fptr,keyname,card,status)
	fitsfile * fptr
	char * keyname
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_modify_card = 1
		fitsfilePtr::modify_card = 2
	OUTPUT:
		status

int
ffmcom(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_comment = 1
		fitsfilePtr::modify_comment = 2
	OUTPUT:
		status

int
ffmkyu(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_null = 1
		fitsfilePtr::modify_key_null = 2
	OUTPUT:
		status

int
ffmkys(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_str = 1
		fitsfilePtr::modify_key_str = 2
	OUTPUT:
		status

int
ffmkyl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_log = 1
		fitsfilePtr::modify_key_log = 2
	OUTPUT:
		status

int
ffmkyj(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_lng = 1
		fitsfilePtr::modify_key_lng = 2
	OUTPUT:
		status

int
ffmkye(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_flt = 1
		fitsfilePtr::modify_key_flt = 2
	OUTPUT:
		status

int
ffmkyf(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_fixflt = 1
		fitsfilePtr::modify_key_fixflt = 2
	OUTPUT:
		status

int
ffmkyd(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_dbl = 1
		fitsfilePtr::modify_key_dbl = 2
	OUTPUT:
		status

int
ffmkyg(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_fixdbl = 1
		fitsfilePtr::modify_key_fixdbl = 2
	OUTPUT:
		status

int
ffmkyc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_cmp = 1
		fitsfilePtr::modify_key_cmp = 2
	OUTPUT:
		status

int
ffmkfc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_fixcmp = 1
		fitsfilePtr::modify_key_fixcmp = 2
	OUTPUT:
		status

int
ffmkym(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_dblcmp = 1
		fitsfilePtr::modify_key_dblcmp = 2
	OUTPUT:
		status

int
ffmkfm(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_modify_key_fixdblcmp = 1
		fitsfilePtr::modify_key_fixdblcmp = 2
	OUTPUT:
		status

int
ffmnam(fptr,oldname,newname,status)
	fitsfile * fptr
	char * oldname
	char * newname
	int &status
	ALIAS:
		CFITSIO::fits_modify_name = 1
		fitsfilePtr::modify_name = 2
	OUTPUT:
		status

int
ffmrec(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_modify_record = 1
		fitsfilePtr::modify_record = 2
	OUTPUT:
		status

int
ffmvec(fptr,colnum,newveclen,status)
	fitsfile * fptr
	int colnum
	long newveclen
	int &status
	ALIAS:
		CFITSIO::fits_modify_vector_len = 1
		fitsfilePtr::modify_vector_len = 2
	OUTPUT:
		status

int
ffmahd(fptr,hdunum,hdutype,status)
	fitsfile * fptr
	int hdunum
	int &hdutype = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_movabs_hdu = 1
		fitsfilePtr::movabs_hdu = 2
	OUTPUT:
		hdutype
		status

int
ffmnhd(fptr,hdunum,extname,extvers,status)
	fitsfile * fptr
	int hdunum
	char * extname
	int extvers
	int &status
	ALIAS:
		CFITSIO::fits_movnam_hdu = 1
		fitsfilePtr::movnam_hdu = 2
	OUTPUT:
		status

int
ffmrhd(fptr,nmove,hdutype,status)
	fitsfile * fptr
	int nmove
	int &hdutype = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_movrel_hdu = 1
		fitsfilePtr::movrel_hdu = 2
	OUTPUT:
		hdutype
		status

fitsfile *
open_file(filename,iomode,status)
	char * filename
	int iomode
	int status
	PREINIT:
		fitsfile * fptr;
	CODE:
		ffopen(&fptr,filename,iomode,&status);
		RETVAL = fptr;
	OUTPUT:
		RETVAL
		status

int
ffopen(fptr,filename,iomode,status)
	fitsfile * &fptr = NO_INIT
	char * filename
	int iomode
	int &status
	ALIAS:
		CFITSIO::fits_open_file = 1
	OUTPUT:
		fptr
		status

int
ffgtop(mfptr,group,gfptr,status)
	fitsfile * mfptr
	int group
	fitsfile * &gfptr = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_open_group = 1
		fitsfilePtr::open_group = 2
	OUTPUT:
		gfptr
		status

int
ffgmop(gfptr,member,mfptr,status)
	fitsfile * gfptr
	long member
	fitsfile * &mfptr = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_open_member = 1
		fitsfilePtr::open_member = 2
	OUTPUT:
		mfptr
		status

int
ffextn(filename,hdunum,status)
	char * filename
	int &hdunum = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_parse_extnum = 1
	OUTPUT:
		hdunum
		status

int
ffiurl(filename,filetype,infile,outfile,extspec,filter,binspec,colspec,status)
	char * filename
	char * filetype
	char * infile
	char * outfile
	char * extspec
	char * filter
	char * binspec
	char * colspec
	int &status
	ALIAS:
		CFITSIO::fits_parse_input_url = 1
	OUTPUT:
		filetype
		infile
		outfile
		extspec
		filter
		binspec
		colspec
		status

int
ffrtnm(filename,rootname,status)
	char * filename
	char * rootname
	int &status
	ALIAS:
		CFITSIO::fits_parse_rootname = 1
	OUTPUT:
		rootname
		status

int
ffgthd(templt,card,keytype,status)
	char * templt
	char * card
	int &keytype
	int &status
	ALIAS:
		CFITSIO::fits_parse_template = 1
	OUTPUT:
		card
		keytype
		status

int
ffpsvc(card,value,comment,status)
	char * card
	char * value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_parse_value = 1
	OUTPUT:
		value
		comment
		status

int
ffwldp(xpix,ypix,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,xpos,ypos,status)
	double xpix
	double ypix
	double xrefval
	double yrefval
	double xrefpix
	double yrefpix
	double xinc
	double yinc
	double rot
	char * coordtype
	double &xpos
	double &ypos
	int &status
	ALIAS:
		CFITSIO::fits_pix_to_world = 1
	OUTPUT:
		xpos
		ypos
		status

int
ffg2db(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	byte nulval
	long dim1
	long naxis1
	long naxis2
	byte * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_byt = 1
		fitsfilePtr::read_2d_byt = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TBYTE);
		RETVAL=ffg2db(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2dui(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned short nulval
	long dim1
	long naxis1
	long naxis2
	unsigned short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_usht = 1
		fitsfilePtr::read_2d_usht = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TUSHORT);
		RETVAL=ffg2dui(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2di(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	short nulval
	long dim1
	long naxis1
	long naxis2
	short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_sht = 1
		fitsfilePtr::read_2d_sht = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TSHORT);
		RETVAL=ffg2di(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2duk(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned int nulval
	long dim1
	long naxis1
	long naxis2
	unsigned int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_uint = 1
		fitsfilePtr::read_2d_uint = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TUINT);
		RETVAL=ffg2duk(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2dk(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	int nulval
	long dim1
	long naxis1
	long naxis2
	int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_int = 1
		fitsfilePtr::read_2d_int = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TINT);
		RETVAL=ffg2dk(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2duj(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned long nulval
	long dim1
	long naxis1
	long naxis2
	unsigned long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_ulng = 1
		fitsfilePtr::read_2d_ulng = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TULONG);
		RETVAL=ffg2duj(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2dj(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	long nulval
	long dim1
	long naxis1
	long naxis2
	long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_lng = 1
		fitsfilePtr::read_2d_lng = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TLONG);
		RETVAL=ffg2dj(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2de(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	float nulval
	long dim1
	long naxis1
	long naxis2
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_flt = 1
		fitsfilePtr::read_2d_flt = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TFLOAT);
		RETVAL=ffg2de(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg2dd(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	double nulval
	long dim1
	long naxis1
	long naxis2
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_2d_dbl = 1
		fitsfilePtr::read_2d_dbl = 2
	PREINIT:
		long dims[2];
	CODE:
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TDOUBLE);
		RETVAL=ffg2dd(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3db(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	byte nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	byte * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_byt = 1
		fitsfilePtr::read_3d_byt = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TBYTE);
		RETVAL=ffg3db(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3dui(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned short nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_usht = 1
		fitsfilePtr::read_3d_usht = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TUSHORT);
		RETVAL=ffg3dui(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3di(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	short nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_sht = 1
		fitsfilePtr::read_3d_sht = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TSHORT);
		RETVAL=ffg3di(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3duk(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned int nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_uint = 1
		fitsfilePtr::read_3d_uint = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TUINT);
		RETVAL=ffg3duk(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3dk(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	int nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_int = 1
		fitsfilePtr::read_3d_int = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TINT);
		RETVAL=ffg3dk(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3duj(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned long nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_ulng = 1
		fitsfilePtr::read_3d_ulng = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TULONG);
		RETVAL=ffg3duj(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3dj(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	long nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_lng = 1
		fitsfilePtr::read_3d_lng = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TLONG);
		RETVAL=ffg3dj(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3de(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	float nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_flt = 1
		fitsfilePtr::read_3d_flt = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TFLOAT);
		RETVAL=ffg3de(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffg3dd(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
	fitsfile * fptr
	long group
	double nulval
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_3d_dbl = 1
		fitsfilePtr::read_3d_dbl = 2
	PREINIT:
		long dims[3];
	CODE:
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TDOUBLE);
		RETVAL=ffg3dd(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffghtb(fptr,maxdim,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
	fitsfile * fptr
	int maxdim
	long rowlen = NO_INIT
	long nrows = NO_INIT
	int tfields = NO_INIT
	char ** ttype = NO_INIT
	long * tbcol = NO_INIT
	char ** tform = NO_INIT
	char ** tunit = NO_INIT
	char * extname = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_atblhdr = 1
		fitsfilePtr::read_atblhdr = 2
	PREINIT:
		int i,max;
	CODE:
		extname = (ST(9)!=&sv_undef) ? get_mortalspace(FLEN_VALUE,TBYTE) : NULL;
		ffghtb(fptr,0,&rowlen,&nrows,&tfields,ttype,tbcol,tform,tunit,extname,&status);

		if (ST(6)!=&sv_undef) tbcol = get_mortalspace(tfields,TLONG);
		else tbcol = NULL;

		if (ST(5)!=&sv_undef) {
			ttype = get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				ttype[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else ttype = NULL;
		if (ST(7)!=&sv_undef) {
			tform = get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				tform[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else tform = NULL;
		if (ST(8)!=&sv_undef) {
			tunit = get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				tunit[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else tunit = NULL;

		RETVAL=ffghtb(fptr,tfields,&rowlen,&nrows,&tfields,ttype,tbcol,tform,tunit,extname,&status);
		if (ST(2)!=&sv_undef) sv_setiv(ST(2),(IV)rowlen);
		if (ST(3)!=&sv_undef) sv_setiv(ST(3),(IV)nrows);
		if (ST(4)!=&sv_undef) sv_setiv(ST(4),(IV)tfields);
		if (ttype) unpack1D(ST(5),ttype,tfields,TSTRING);
		if (tbcol) unpack1D(ST(6),tbcol,tfields,TLONG);
		if (tform) unpack1D(ST(7),tform,tfields,TSTRING);
		if (tunit) unpack1D(ST(8),tunit,tfields,TSTRING);
		if (extname) sv_setpv(ST(9),extname);
	OUTPUT:
		status
		RETVAL

int
ffghbn(fptr,maxdim,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	int maxdim
	long nrows = NO_INIT
	int tfields = NO_INIT
	char ** ttype = NO_INIT
	char ** tform = NO_INIT
	char ** tunit = NO_INIT
	char * extname = NO_INIT
	long pcount = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_btblhdr = 1
		fitsfilePtr::read_btblhdr = 2
	PREINIT:
		int i,max;
	CODE:
		extname = (ST(7)!=&sv_undef) ? get_mortalspace(FLEN_VALUE,TBYTE) : NULL;
		ffghbn(fptr,0,&nrows,&tfields,ttype,tform,tunit,extname,&pcount,&status);
		if (ST(4) != &sv_undef) {
			ttype = get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				ttype[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else ttype = NULL;
		if (ST(5) != &sv_undef) {
			tform = (char **)get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				tform[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else tform = NULL;
		if (ST(6) != &sv_undef) {
			tunit = get_mortalspace(tfields,TSTRING);
			for (i=0; i<tfields; i++)
				tunit[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		} else tunit = NULL;
		RETVAL=ffghbn(fptr,tfields,&nrows,&tfields,ttype,tform,tunit,extname,&pcount,&status);
		if (ST(2) != &sv_undef) sv_setiv(ST(2),(IV)nrows);
		if (ST(3) != &sv_undef) sv_setiv(ST(3),(IV)tfields);
		if (ttype) unpack1D(ST(4),ttype,tfields,TSTRING);
		if (tform) unpack1D(ST(5),tform,tfields,TSTRING);
		if (tunit) unpack1D(ST(6),tunit,tfields,TSTRING);
		if (extname) sv_setpv(ST(7),extname);
		if (ST(8) != &sv_undef) sv_setiv(ST(8),(IV)pcount);
	OUTPUT:
		status
		RETVAL

int
ffgcrd(fptr,keyname,card,status)
	fitsfile * fptr
	char * keyname
	char * card = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_card = 1
		fitsfilePtr::read_card = 2
	CODE:
		card = (char *)get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=ffgcrd(fptr,keyname,card,&status);
		sv_setpv((SV*)ST(2),card);
	OUTPUT:
		status
		RETVAL

int
ffgcv(fptr,datatype,colnum,firstrow,firstelem,nelements,nulval,array,anynul,status)
	fitsfile * fptr
	int datatype
	int colnum
	long firstrow
	long firstelem
	long nelements
	SV * nulval
	void * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col = 1
		fitsfilePtr::read_col = 2
	PREINIT:
		long col_width, i;
	CODE:
		array = get_mortalspace(nelements,datatype);
		if (datatype == TSTRING) {
			col_width = column_width(fptr,colnum);
			for (i=0;i<nelements;i++)
				*((char**)array+i)=(char *)get_mortalspace(col_width+1,TBYTE);
		}
		RETVAL=ffgcv(fptr,datatype,colnum,firstrow,firstelem,nelements,pack1D(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(7),array,nelements,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcx(fptr,colnum,frow,fbit,nbit,larray,status)
	fitsfile * fptr
	int colnum
	long frow
	long fbit
	long nbit
	logical * larray = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_col_bit = 1
		fitsfilePtr::read_col_bit = 2
	CODE:
		larray = get_mortalspace(nbit,TLOGICAL);
		RETVAL=ffgcx(fptr,colnum,frow,fbit,nbit,larray,&status);
		unpack1D(ST(5),larray,nbit,TLOGICAL);
	OUTPUT:
		status

int
ffgcvs(fptr,colnum,firstrow,firstelem,nelements,nulstr,array,anynul,status)
	fitsfile * fptr
	int colnum
	long firstrow
	long firstelem
	long nelements
	char * nulstr
	char ** array = NO_INIT
	int anynul = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_col_str = 1
		fitsfilePtr::read_col_str = 2
	PREINIT:
		long i;
		long col_size;
	CODE:
		col_size = column_width(fptr,colnum);
		array = get_mortalspace(nelements,TSTRING);
		for (i=0;i<nelements;i++)
			array[i] = (char *)get_mortalspace(col_size+1,TBYTE);
		RETVAL=ffgcvs(fptr,colnum,firstrow,firstelem,nelements,nulstr,array,&anynul,&status);
		unpack1D((SV*)ST(6),array,nelements,TSTRING);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvl(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical nulval
	logical * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_log = 1
		fitsfilePtr::read_col_log = 2
	CODE:
		array = (logical *)get_mortalspace(nelem,TLOGICAL);
		RETVAL=ffgcvl(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvb(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte nulval
	byte * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_byt = 1
		fitsfilePtr::read_col_byt = 2
	CODE:
		array = (byte *)get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcvb(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvui(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short nulval
	unsigned short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_usht = 1
		fitsfilePtr::read_col_usht = 2
	CODE:
		array = (unsigned short *)get_mortalspace(nelem,TUSHORT);
		RETVAL=ffgcvui(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvi(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short nulval
	short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_sht = 1
		fitsfilePtr::read_col_sht = 2
	CODE:
		array = (short *)get_mortalspace(nelem,TSHORT);
		RETVAL=ffgcvi(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvuk(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int nulval
	unsigned int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_uint = 1
		fitsfilePtr::read_col_uint = 2
	CODE:
		array = (unsigned int *)get_mortalspace(nelem,TUINT);
		RETVAL=ffgcvuk(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvk(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int nulval
	int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_int = 1
		fitsfilePtr::read_col_int = 2
	CODE:
		array = (int *)get_mortalspace(nelem,TINT);
		RETVAL=ffgcvk(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvuj(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long nulval
	unsigned long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_ulng = 1
		fitsfilePtr::read_col_ulng = 2
	CODE:
		array = (unsigned long *)get_mortalspace(nelem,TULONG);
		RETVAL=ffgcvuj(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvj(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	long nulval
	long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_lng = 1
		fitsfilePtr::read_col_lng = 2
	CODE:
		array = (long *)get_mortalspace(nelem,TLONG);
		RETVAL=ffgcvj(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcve(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_flt = 1
		fitsfilePtr::read_col_flt = 2
	CODE:
		array = (float *)get_mortalspace(nelem,TFLOAT);
		RETVAL=ffgcve(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvd(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_dbl = 1
		fitsfilePtr::read_col_dbl = 2
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=ffgcvd(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvm(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_dblcmp = 1
		fitsfilePtr::read_col_dblcmp = 2
	CODE:
		array = get_mortalspace(nelem,TDBLCOMPLEX);
		RETVAL=ffgcvm(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TDBLCOMPLEX);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcvc(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_col_cmp = 1
		fitsfilePtr::read_col_cmp = 2
	CODE:
		array = get_mortalspace(nelem,TCOMPLEX);
		RETVAL=ffgcvc(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TCOMPLEX);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfs(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	char ** array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_str = 1
		fitsfilePtr::read_colnull_str = 2
	PREINIT:
		long col_size, i;
	CODE:
		col_size = column_width(fptr,colnum);
		array = get_mortalspace(nelem,TSTRING);
		for (i=0;i<nelem;i++)
			array[i] = (char *)get_mortalspace(col_size+1,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfs(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSTRING);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfl(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	logical * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_log = 1
		fitsfilePtr::read_colnull_log = 2
	CODE:
		array = get_mortalspace(nelem,TLOGICAL);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfl(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLOGICAL);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfb(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	byte * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_byt = 1
		fitsfilePtr::read_colnull_byt = 2
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfb(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TBYTE);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfui(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_usht = 1
		fitsfilePtr::read_colnull_usht = 2
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfui(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUSHORT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfi(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_sht = 1
		fitsfilePtr::read_colnull_sht = 2
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfi(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSHORT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfk(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_int = 1
		fitsfilePtr::read_colnull_int = 2
	CODE:
		array = get_mortalspace(nelem,TINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfk(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TINT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfuk(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_uint = 1
		fitsfilePtr::read_colnull_uint = 2
	CODE:
		array = get_mortalspace(nelem,TUINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfuk(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUINT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfj(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_lng = 1
		fitsfilePtr::read_colnull_lng = 2
	CODE:
		array = get_mortalspace(nelem,TLONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfj(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLONG);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfuj(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_ulng = 1
		fitsfilePtr::read_colnull_ulng = 2
	CODE:
		array = get_mortalspace(nelem,TULONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfuj(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TULONG);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfe(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_flt = 1
		fitsfilePtr::read_colnull_flt = 2
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfe(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TFLOAT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfd(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_dbl = 1
		fitsfilePtr::read_colnull_dbl = 2
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfd(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDOUBLE);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfc(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_cmp = 1
		fitsfilePtr::read_colnull_cmp = 2
	CODE:
		array = get_mortalspace(nelem,TCOMPLEX);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfc(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TCOMPLEX);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgcfm(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_colnull_dblcmp = 1
		fitsfilePtr::read_colnull_dblcmp = 2
	CODE:
		array = get_mortalspace(nelem,TDBLCOMPLEX);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgcfm(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDBLCOMPLEX);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgdes(fptr,colnum,rownum,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long rownum
	long &repeat
	long &offset
	int &status
	ALIAS:
		CFITSIO::fits_read_descript = 1
		fitsfilePtr::read_descript = 2
	OUTPUT:
		repeat
		offset
		status

int
ffgdess(fptr,colnum,frow,nrows,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long frow
	long nrows
	long * repeat = NO_INIT
	long * offset = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_descripts = 1
		fitsfilePtr::read_descripts = 2
	CODE:
		repeat = get_mortalspace(nrows,TLONG);
		offset = get_mortalspace(nrows,TLONG);
		RETVAL=ffgdess(fptr,colnum,frow,nrows,repeat,offset,&status);
		unpack1D(ST(4),repeat,nrows,TLONG);
		unpack1D(ST(4),offset,nrows,TLONG);
	OUTPUT:
		status
		RETVAL

int
ffgmsg(err_msg)
	char * err_msg = NO_INIT
	ALIAS:
		CFITSIO::fits_read_errmsg = 1
	CODE:
		err_msg = get_mortalspace(FLEN_ERRMSG,TBYTE);
		RETVAL = fits_read_errmsg(err_msg);
	OUTPUT:
		err_msg
		RETVAL

int
ffggpb(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_byt = 1
		fitsfilePtr::read_grppar_byt = 2
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		RETVAL=ffggpb(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
	OUTPUT:
		status
		RETVAL

int
ffggpi(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_sht = 1
		fitsfilePtr::read_grppar_sht = 2
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		RETVAL=ffggpi(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TSHORT);
	OUTPUT:
		status
		RETVAL

int
ffggpui(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_usht = 1
		fitsfilePtr::read_grppar_usht = 2
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		RETVAL=ffggpui(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TUSHORT);
	OUTPUT:
		status
		RETVAL

int
ffggpk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_int = 1
		fitsfilePtr::read_grppar_int = 2
	CODE:
		array = get_mortalspace(nelem,TINT);
		RETVAL=ffggpk(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TINT);
	OUTPUT:
		status
		RETVAL

int
ffggpuk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_uint = 1
		fitsfilePtr::read_grppar_uint = 2
	CODE:
		array = get_mortalspace(nelem,TUINT);
		RETVAL=ffggpuk(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TUINT);
	OUTPUT:
		status
		RETVAL

int
ffggpj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_lng = 1
		fitsfilePtr::read_grppar_lng = 2
	CODE:
		array = get_mortalspace(nelem,TLONG);
		RETVAL=ffggpj(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TLONG);
	OUTPUT:
		status
		RETVAL

int
ffggpuj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_ulng = 1
		fitsfilePtr::read_grppar_ulng = 2
	CODE:
		array = get_mortalspace(nelem,TULONG);
		RETVAL=ffggpuj(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TULONG);
	OUTPUT:
		status
		RETVAL

int
ffggpe(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_flt = 1
		fitsfilePtr::read_grppar_flt = 2
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		RETVAL=ffggpe(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TFLOAT);
	OUTPUT:
		status
		RETVAL

int
ffggpd(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_grppar_dbl = 1
		fitsfilePtr::read_grppar_dbl = 2
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=ffggpd(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TDOUBLE);
	OUTPUT:
		status
		RETVAL

int
ffgpv(fptr,datatype,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int datatype
	long felem
	long nelem
	SV * nulval
	void * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img = 1
		fitsfilePtr::read_img = 2
	CODE:
		array = get_mortalspace(nelem,datatype);
		RETVAL=ffgpv(fptr,datatype,felem,nelem,pack1D(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(5),array,nelem,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgics(fptr,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,status)
	fitsfile * fptr
	double xrefval
	double yrefval
	double xrefpix
	double yrefpix
	double xinc
	double yinc
	double rot
	char * coordtype = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_img_coord = 1
		fitsfilePtr::read_img_coord = 2
	CODE:
		coordtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgics(fptr,&xrefval,&yrefval,&xrefpix,&yrefpix,&xinc,&yinc,&rot,coordtype,&status);
	OUTPUT:
		xrefval
		yrefval
		xrefpix
		yrefpix
		xinc
		yinc
		rot
		coordtype
		status
		RETVAL

int
ffgpvb(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte nulval
	byte * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_byt = 1
		fitsfilePtr::read_img_byt = 2
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpvb(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvi(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short nulval
	short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_sht = 1
		fitsfilePtr::read_img_sht = 2
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		RETVAL=ffgpvi(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvui(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short nulval
	unsigned short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_usht = 1
		fitsfilePtr::read_img_usht = 2
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		RETVAL=ffgpvui(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvk(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int nulval
	int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_int = 1
		fitsfilePtr::read_img_int = 2
	CODE:
		array = get_mortalspace(nelem,TINT);
		RETVAL=ffgpvk(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvuk(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int nulval
	unsigned int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_uint = 1
		fitsfilePtr::read_img_uint = 2
	CODE:
		array = get_mortalspace(nelem,TUINT);
		RETVAL=ffgpvuk(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvj(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long nulval
	long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_lng = 1
		fitsfilePtr::read_img_lng = 2
	CODE:
		array = get_mortalspace(nelem,TLONG);
		RETVAL=ffgpvj(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvuj(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long nulval
	unsigned long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_ulng = 1
		fitsfilePtr::read_img_ulng = 2
	CODE:
		array = get_mortalspace(nelem,TULONG);
		RETVAL=ffgpvuj(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpve(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_flt = 1
		fitsfilePtr::read_img_flt = 2
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		RETVAL=ffgpve(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpvd(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_img_dbl = 1
		fitsfilePtr::read_img_dbl = 2
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=ffgpvd(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffghpr(fptr,maxdim,simple,bitpix,naxis,naxes,pcount,gcount,extend,status)
	fitsfile * fptr
	int maxdim
	int simple
	int bitpix
	int naxis
	long * naxes = NO_INIT
	long pcount
	long gcount
	int extend
	int status
	ALIAS:
		CFITSIO::fits_read_imghdr = 1
		fitsfilePtr::read_imghdr = 2
	CODE:
		ffghpr(fptr,0,&simple,&bitpix,&naxis,naxes,&pcount,&gcount,&extend,&status);
		naxes = get_mortalspace(naxis,TLONG);
		RETVAL=ffghpr(fptr,naxis,&simple,&bitpix,&naxis,naxes,&pcount,&gcount,&extend,&status);
		unpack1D(ST(5),naxes,naxis,TLONG);
	OUTPUT:
		simple
		bitpix
		naxis
		pcount
		gcount
		extend
		status
		RETVAL

int
ffgpfb(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_byt = 1
		fitsfilePtr::read_imgnull_byt = 2
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfb(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfi(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_sht = 1
		fitsfilePtr::read_imgnull_sht = 2
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfi(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TSHORT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfui(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_usht = 1
		fitsfilePtr::read_imgnull_usht = 2
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfui(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TUSHORT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfk(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_int = 1
		fitsfilePtr::read_imgnull_int = 2
	CODE:
		array = get_mortalspace(nelem,TINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfk(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TINT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfuk(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_uint = 1
		fitsfilePtr::read_imgnull_uint = 2
	CODE:
		array = get_mortalspace(nelem,TUINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfuk(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TUINT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfj(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_lng = 1
		fitsfilePtr::read_imgnull_lng = 2
	CODE:
		array = get_mortalspace(nelem,TLONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfj(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TLONG);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfuj(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_ulng = 1
		fitsfilePtr::read_imgnull_ulng = 2
	CODE:
		array = get_mortalspace(nelem,TULONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfuj(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfe(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_flt = 1
		fitsfilePtr::read_imgnull_flt = 2
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfe(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TFLOAT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgpfd(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_imgnull_dbl = 1
		fitsfilePtr::read_imgnull_dbl = 2
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=ffgpfd(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TDOUBLE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgky(fptr,datatype,keyname,value,comment,status)
	fitsfile * fptr
	int datatype
	char * keyname
	void * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key = 1
		fitsfilePtr::read_key = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		if (datatype == TSTRING)
			value = get_mortalspace(FLEN_VALUE,TBYTE);
		else if (datatype == TLOGICAL)
			value = get_mortalspace(1,TINT);
		else
			value = get_mortalspace(1,datatype);
		RETVAL=ffgky(fptr,datatype,keyname,value,comment,&status);
		if (datatype == TLOGICAL)
			datatype = TINT;
		unpackScalar(ST(3),value,datatype);
	OUTPUT:
		comment
		status
		RETVAL

int
ffgkyt(fptr,keyname,intval,frac,comment,status)
	fitsfile * fptr
	char * keyname
	long intval
	double frac
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_triple = 1
		fitsfilePtr::read_key_triple = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyt(fptr,keyname,&intval,&frac,comment,&status);
	OUTPUT:
		intval
		frac
		comment
		status
		RETVAL

int
ffgunt(fptr,keyname,unit,status)
	fitsfile * fptr
	char * keyname
	char * unit = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_key_unit = 1
		fitsfilePtr::read_key_unit = 2
	CODE:
		unit = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgunt(fptr,keyname,unit,&status);
	OUTPUT:
		unit
		status
		RETVAL

int
ffgkls(fptr,keyname,longstr,comment,status)
	fitsfile * fptr
	char * keyname
	char * longstr = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_longstr = 1
		fitsfilePtr::read_key_longstr = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkls(fptr,keyname,&longstr,comment,&status);
		unpackScalar(ST(2),longstr,TSTRING);
		free(longstr);
	OUTPUT:
		comment
		status
		RETVAL

int
ffgkys(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_str = 1
		fitsfilePtr::read_key_str = 2
	CODE:
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkys(fptr,keyname,value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgkyl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_log = 1
		fitsfilePtr::read_key_log = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyl(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgkyj(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_lng = 1
		fitsfilePtr::read_key_lng = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyj(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgkye(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_flt = 1
		fitsfilePtr::read_key_flt = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkye(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgkyd(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_dbl = 1
		fitsfilePtr::read_key_dbl = 2
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyd(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgkyc(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	float * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_cmp = 1
		fitsfilePtr::read_key_cmp = 2
	CODE:
		value = get_mortalspace(1,TCOMPLEX);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyc(fptr,keyname,value,comment,&status);
		unpackScalar(ST(2),value,TCOMPLEX);
	OUTPUT:
		status
		comment
		RETVAL

int
ffgkym(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	double * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_key_dblcmp = 1
		fitsfilePtr::read_key_dblcmp = 2
	CODE:
		value = get_mortalspace(1,TDBLCOMPLEX);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkym(fptr,keyname,value,comment,&status);
		unpackScalar(ST(2),value,TDBLCOMPLEX);
	OUTPUT:
		comment
		status
		RETVAL

int
ffgkyn(fptr,keynum,keyname,value,comment,status)
	fitsfile * fptr
	int keynum
	char * keyname = NO_INIT
	char * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_keyn = 1
		fitsfilePtr::read_keyn = 2
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkyn(fptr,keynum,keyname,value,comment,&status);
	OUTPUT:
		keyname
		value
		comment
		status
		RETVAL

int
ffgkns(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	char ** value = NO_INIT
	int nfound
	int status
	ALIAS:
		CFITSIO::fits_read_keys_str = 1
		fitsfilePtr::read_keys_str = 2
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TSTRING);
		for (i=0; i<nkeys; i++)
			value[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgkns(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TSTRING);
	OUTPUT:
		nfound
		status
		RETVAL

int
ffgknl(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	int * value = NO_INIT
	int nfound
	int status
	ALIAS:
		CFITSIO::fits_read_keys_log = 1
		fitsfilePtr::read_keys_log = 2
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TINT);
		RETVAL=ffgknl(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TINT);
	OUTPUT:
		nfound
		status
		RETVAL

int
ffgknj(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	long * value = NO_INIT
	int nfound
	int status
	ALIAS:
		CFITSIO::fits_read_keys_lng = 1
		fitsfilePtr::read_keys_lng = 2
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TLONG);
		RETVAL=ffgknj(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TLONG);
	OUTPUT:
		nfound
		status
		RETVAL

int
ffgkne(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	float * value = NO_INIT
	int nfound
	int status
	ALIAS:
		CFITSIO::fits_read_keys_flt = 1
		fitsfilePtr::read_keys_flt = 2
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TFLOAT);
		RETVAL=ffgkne(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TFLOAT);
	OUTPUT:
		nfound
		status
		RETVAL

int
ffgknd(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	double * value = NO_INIT
	int nfound
	int status
	ALIAS:
		CFITSIO::fits_read_keys_dbl = 1
		fitsfilePtr::read_keys_dbl = 2
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TDOUBLE);
		RETVAL=ffgknd(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TDOUBLE);
	OUTPUT:
		nfound
		status
		RETVAL

int
ffgkey(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value = NO_INIT
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_read_keyword = 1
		fitsfilePtr::read_keyword = 2
	CODE:
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=ffgkey(fptr,keyname,value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
ffgrec(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_record = 1
		fitsfilePtr::read_record = 2
	CODE:
		card = get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=ffgrec(fptr,keynum,card,&status);
	OUTPUT:
		card
		status
		RETVAL

int
ffgsvb(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	byte nulval
	byte * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_byt = 1
		fitsfilePtr::read_subset_byt = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TBYTE);
		RETVAL=ffgsvb(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvi(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	short nulval
	short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_sht = 1
		fitsfilePtr::read_subset_sht = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TSHORT);
		RETVAL=ffgsvi(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvui(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned short nulval
	unsigned short * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_usht = 1
		fitsfilePtr::read_subset_usht = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUSHORT);
		RETVAL=ffgsvui(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvk(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	int nulval
	int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_int = 1
		fitsfilePtr::read_subset_int = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TINT);
		RETVAL=ffgsvk(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvuk(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned int nulval
	unsigned int * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_uint = 1
		fitsfilePtr::read_subset_uint = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUINT);
		RETVAL=ffgsvuk(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvj(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	long nulval
	long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_lng = 1
		fitsfilePtr::read_subset_lng = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TLONG);
		RETVAL=ffgsvj(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvuj(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned long nulval
	unsigned long * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_ulng = 1
		fitsfilePtr::read_subset_ulng = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TULONG);
		RETVAL=ffgsvuj(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsve(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_flt = 1
		fitsfilePtr::read_subset_flt = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TFLOAT);
		RETVAL=ffgsve(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsvd(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subset_dbl = 1
		fitsfilePtr::read_subset_dbl = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TDOUBLE);
		RETVAL=ffgsvd(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfb(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	byte * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_byt = 1
		fitsfilePtr::read_subsetnull_byt = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TBYTE);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfb(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TBYTE);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfi(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	short * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_sht = 1
		fitsfilePtr::read_subsetnull_sht = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TSHORT);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfi(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TSHORT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfui(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned short * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_usht = 1
		fitsfilePtr::read_subsetnull_usht = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUSHORT);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfui(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TUSHORT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfk(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	int * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_int = 1
		fitsfilePtr::read_subsetnull_int = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TINT);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfk(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TINT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfuk(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned int * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_uint = 1
		fitsfilePtr::read_subsetnull_uint = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUINT);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfuk(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TUINT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfj(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	long * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_lng = 1
		fitsfilePtr::read_subsetnull_lng = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TLONG);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfj(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TLONG);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfuj(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	unsigned long * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_ulng = 1
		fitsfilePtr::read_subsetnull_ulng = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TULONG);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfuj(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TULONG);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfe(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	float * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_flt = 1
		fitsfilePtr::read_subsetnull_flt = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TFLOAT);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfe(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TFLOAT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgsfd(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
	fitsfile * fptr
	int group
	int naxis
	long * naxes
	long * fpixels
	long * lpixels
	long * inc
	double * array = NO_INIT
	logical * nularr = NO_INIT
	int anynul
	int status
	ALIAS:
		CFITSIO::fits_read_subsetnull_dbl = 1
		fitsfilePtr::read_subsetnull_dbl = 2
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TDOUBLE);
		nularr = get_mortalspace(ndata,TLOGICAL);
		RETVAL=ffgsfd(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TDOUBLE);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
ffgtcs(fptr,xcol,ycol,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,status)
	fitsfile * fptr
	int xcol
	int ycol
	double xrefval
	double yrefval
	double xrefpix
	double yrefpix
	double xinc
	double yinc
	double rot
	char * coordtype = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_tbl_coord = 1
		fitsfilePtr::read_tbl_coord = 2
	CODE:
		coordtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=ffgtcs(fptr,xcol,ycol,&xrefval,&yrefval,&xrefpix,&yrefpix,&xinc,&yinc,&rot,coordtype,&status);
	OUTPUT:
		xrefval
		yrefval
		xrefpix
		yrefpix
		xinc
		yinc
		rot
		coordtype
		status
		RETVAL

int
ffgtbb(fptr,frow,fchar,nchars,values,status)
	fitsfile * fptr
	long frow
	long fchar
	long nchars
	byte * values = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_tblbytes = 1
		fitsfilePtr::read_tblbytes = 2
	CODE:
		values = get_mortalspace(nchars,TBYTE);
		RETVAL=ffgtbb(fptr,frow,fchar,nchars,values,&status);
		unpack1D(ST(4),values,nchars,TBYTE);
	OUTPUT:
		status
		RETVAL

int
ffgtdm(fptr,colnum,maxdim,naxis,naxes,status)
	fitsfile * fptr
	int colnum
	int maxdim
	int naxis
	long * naxes = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_read_tdim = 1
		fitsfilePtr::read_tdim = 2
	CODE:
		fits_read_tdim(fptr,colnum,0,&naxis,naxes,&status);
		naxes = get_mortalspace(naxis,TLONG);
		RETVAL=ffgtdm(fptr,colnum,naxis,&naxis,naxes,&status);
		unpack1D(ST(4),naxes,naxis,TLONG);
	OUTPUT:
		status
		naxis
		RETVAL

int
ffgtrm(gfptr,rmopt,status)
	fitsfile * gfptr
	int rmopt
	int &status
	ALIAS:
		CFITSIO::fits_remove_group = 1
		fitsfilePtr::remove_group = 2
	OUTPUT:
		status

int
ffgmrm(fptr,member,rmopt,status)
	fitsfile * fptr
	long member
	int rmopt
	int &status
	ALIAS:
		CFITSIO::fits_remove_member = 1
		fitsfilePtr::remove_member = 2
	OUTPUT:
		status

int
ffreopen(openfptr,newfptr,status)
	fitsfile * openfptr
	fitsfile * &newfptr = NO_INIT
	int &status
	ALIAS:
		CFITSIO::fits_reopen_file = 1
		fitsfilePtr::reopen_file = 2
	OUTPUT:
		newfptr
		status

void
ffrprt(stream, status)
	FILE * stream
	int status
	ALIAS:
		CFITSIO::fits_report_error = 1

int
ffrsim(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	ALIAS:
		CFITSIO::fits_resize_img = 1
		fitsfilePtr::resize_img = 2
	OUTPUT:
		status

int
ffsrow(infptr,outfptr,expr,status)
	fitsfile * infptr
	fitsfile * outfptr
	char * expr
	int &status
	ALIAS:
		CFITSIO::fits_select_rows = 1
		fitsfilePtr::select_rows = 2
	OUTPUT:
		status

int
ffpscl(fptr,scale,zero,status)
	fitsfile * fptr
	double scale
	double zero
	int &status
	ALIAS:
		CFITSIO::fits_set_bscale = 1
		fitsfilePtr::set_bscale = 2
	OUTPUT:
		status

int
ffsnul(fptr,colnum,nulstr,status)
	fitsfile * fptr
	int colnum
	char * nulstr
	int &status
	ALIAS:
		CFITSIO::fits_set_atblnull = 1
		fitsfilePtr::set_atblnull = 2
	OUTPUT:
		status

int
fftnul(fptr,colnum,nulval,status)
	fitsfile * fptr
	int colnum
	long nulval
	int &status
	ALIAS:
		CFITSIO::fits_set_btblnull = 1
		fitsfilePtr::set_btblnull = 2
	OUTPUT:
		status

int
ffhdef(fptr,morekeys,status)
	fitsfile * fptr
	int morekeys
	int &status
	ALIAS:
		CFITSIO::fits_set_hdrsize = 1
		fitsfilePtr::set_hdrsize = 2
	OUTPUT:
		status

int
ffrdef(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_set_hdustruc = 1
		fitsfilePtr::set_hdustruc = 2
	OUTPUT:
		status

int
ffpnul(fptr,nulval,status)
	fitsfile * fptr
	long nulval
	int &status
	ALIAS:
		CFITSIO::fits_set_imgnull = 1
		fitsfilePtr::set_imgnull = 2
	OUTPUT:
		status

int
fftscl(fptr,colnum,scale,zero,status)
	fitsfile * fptr
	int colnum
	double scale
	double zero
	int &status
	ALIAS:
		CFITSIO::fits_set_tscale = 1
		fitsfilePtr::set_tscale = 2
	OUTPUT:
		status

int
ffs2dt(datestr,year,month,day,status)
	char * datestr
	int &year
	int &month
	int &day
	int &status
	ALIAS:
		CFITSIO::fits_str2date = 1
	OUTPUT:
		year
		month
		day
		status

int
ffs2tm(datestr,year,month,day,hour,minute,second,status)
	char * datestr
	int &year
	int &month
	int &day
	int &hour
	int &minute
	double &second
	int &status
	ALIAS:
		CFITSIO::fits_str2time = 1
	OUTPUT:
		year
		month
		day
		hour
		minute
		second
		status

int
fftexp(fptr,expr,maxdim,datatype,nelem,naxis,naxes,status)
	fitsfile * fptr
	char * expr
	int maxdim
	int datatype
	long nelem
	int naxis
	long * naxes = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_test_expr = 1
		fitsfilePtr::test_expr = 2
	CODE:
		fftexp(fptr,expr,0,&datatype,&nelem,&naxis,naxes,&status);
		naxes = (long*)get_mortalspace(naxis,TLONG);
		RETVAL=fftexp(fptr,expr,naxis,&datatype,&nelem,&naxis,naxes,&status);
		unpack1D((SV*)ST(5),naxes,naxis,TLONG);
	OUTPUT:
		datatype
		nelem
		naxis
		status
		RETVAL

int
fftkey(keyname,status)
	char * keyname
	int &status
	ALIAS:
		CFITSIO::fits_test_keyword = 1
	OUTPUT:
		status

int
fftrec(card,status)
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_test_record = 1
	OUTPUT:
		status

int
fftm2s(year,month,day,hr,min,sec,decimals,datestr,status)
	int year
	int month
	int day
	int hr
	int min
	double sec
	int decimals
	char * datestr = NO_INIT
	int status
	ALIAS:
		CFITSIO::fits_time2str = 1
	CODE:
		datestr = get_mortalspace(20+decimals,TBYTE);
		RETVAL=fftm2s(year,month,day,hr,min,sec,decimals,datestr,&status);
	OUTPUT:
		datestr
		status
		RETVAL

int
ffgmtf(infptr,outfptr,member,tfopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	long member
	int tfopt
	int &status
	ALIAS:
		CFITSIO::fits_transfer_member = 1
		fitsfilePtr::transfer_member = 2
	OUTPUT:
		status

int
ffucrd(fptr,keyname,card,status)
	fitsfile *fptr
	char * keyname
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_update_card = 1
		fitsfilePtr::update_card = 2
	OUTPUT:
		status

int
ffupck(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_update_chksum = 1
		fitsfilePtr::update_chksum = 2
	OUTPUT:
		status

int
ffuky(fptr,datatype,keyname,value,comm,status)
	fitsfile * fptr
	int datatype
	char * keyname
	SV * value
	char * comm
	int status
	ALIAS:
		CFITSIO::fits_update_key = 1
		fitsfilePtr::update_key = 2
	CODE:
		RETVAL=ffuky(fptr,datatype,keyname,pack1D(value,datatype),comm,&status);
	OUTPUT:
		status
		RETVAL

int
ffukyu(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_null = 1
		fitsfilePtr::update_key_null = 2
	OUTPUT:
		status

int
ffukys(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_str = 1
		fitsfilePtr::update_key_str = 2
	OUTPUT:
		status

int
ffukyl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_log = 1
		fitsfilePtr::update_key_log = 2
	OUTPUT:
		status

int
ffukyj(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_lng = 1
		fitsfilePtr::update_key_lng = 2
	OUTPUT:
		status

int
ffukye(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_flt = 1
		fitsfilePtr::update_key_flt = 2
	OUTPUT:
		status

int
ffukyd(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_dbl = 1
		fitsfilePtr::update_key_dbl = 2
	OUTPUT:
		status

int
ffukyf(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_fixflt = 1
		fitsfilePtr::update_key_fixflt = 2
	OUTPUT:
		status

int
ffukyg(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_fixdbl = 1
		fitsfilePtr::update_key_fixdbl = 2
	OUTPUT:
		status

int
ffukyc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_cmp = 1
		fitsfilePtr::update_key_cmp = 2
	OUTPUT:
		status

int
ffukym(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_dblcmp = 1
		fitsfilePtr::update_key_dblcmp = 2
	OUTPUT:
		status

int
ffukfc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_fixcmp = 1
		fitsfilePtr::update_key_fixcmp = 2
	OUTPUT:
		status

int
ffukfm(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_update_key_fixdblcmp = 1
		fitsfilePtr::update_key_fixdblcmp = 2
	OUTPUT:
		status

void
ffupch(string)
	char * string
	ALIAS:
		CFITSIO::fits_uppercase = 1
	OUTPUT:
		string

int
ffvcks(fptr,dataok,hduok,status)
	fitsfile * fptr
	int &dataok
	int &hduok
	int &status
	ALIAS:
		CFITSIO::fits_verify_chksum = 1
		fitsfilePtr::verify_chksum = 2
	OUTPUT:
		dataok
		hduok
		status

int
ffgtvf(gfptr,firstfailed,status)
	fitsfile * gfptr
	long &firstfailed
	int &status
	ALIAS:
		CFITSIO::fits_verify_group = 1
		fitsfilePtr::verify_group = 2
	OUTPUT:
		firstfailed
		status

int
ffxypx(xpos,ypos,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,xpix,ypix,status)
	double xpos
	double ypos
	double xrefval
	double yrefval
	double xrefpix
	double yrefpix
	double xinc
	double yinc
	double rot
	char * coordtype
	double &xpix
	double &ypix
	int &status
	ALIAS:
		CFITSIO::fits_world_to_pix = 1
	OUTPUT:
		xpix
		ypix
		status

int
ffp2db(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_byt = 1
		fitsfilePtr::write_2d_byt = 2
	OUTPUT:
		status

int
ffp2di(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_sht = 1
		fitsfilePtr::write_2d_sht = 2
	OUTPUT:
		status

int
ffp2dui(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_usht = 1
		fitsfilePtr::write_2d_usht = 2
	OUTPUT:
		status

int
ffp2dk(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_int = 1
		fitsfilePtr::write_2d_int = 2
	OUTPUT:
		status

int
ffp2duk(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_uint = 1
		fitsfilePtr::write_2d_uint = 2
	OUTPUT:
		status

int
ffp2dj(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_lng = 1
		fitsfilePtr::write_2d_lng = 2
	OUTPUT:
		status

int
ffp2duj(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_ulng = 1
		fitsfilePtr::write_2d_ulng = 2
	OUTPUT:
		status

int
ffp2de(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_flt = 1
		fitsfilePtr::write_2d_flt = 2
	OUTPUT:
		status

int
ffp2dd(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_2d_dbl = 1
		fitsfilePtr::write_2d_dbl = 2
	OUTPUT:
		status

int
ffp3db(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_byt = 1
		fitsfilePtr::write_3d_byt = 2
	OUTPUT:
		status

int
ffp3di(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_sht = 1
		fitsfilePtr::write_3d_sht = 2
	OUTPUT:
		status

int
ffp3dui(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_usht = 1
		fitsfilePtr::write_3d_usht = 2
	OUTPUT:
		status

int
ffp3dk(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_int = 1
		fitsfilePtr::write_3d_int = 2
	OUTPUT:
		status

int
ffp3duk(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_uint = 1
		fitsfilePtr::write_3d_uint = 2
	OUTPUT:
		status

int
ffp3dj(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_lng = 1
		fitsfilePtr::write_3d_lng = 2
	OUTPUT:
		status

int
ffp3duj(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_ulng = 1
		fitsfilePtr::write_3d_ulng = 2
	OUTPUT:
		status

int
ffp3de(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_flt = 1
		fitsfilePtr::write_3d_flt = 2
	OUTPUT:
		status

int
ffp3dd(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_3d_dbl = 1
		fitsfilePtr::write_3d_dbl = 2
	OUTPUT:
		status

int
ffphtb(fptr,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
	fitsfile * fptr
	long rowlen
	long nrows
	int tfields
	char ** ttype
	long * tbcol
	char ** tform
	char ** tunit
	char * extname
	int &status
	ALIAS:
		CFITSIO::fits_write_atblhdr = 1
		fitsfilePtr::write_atblhdr = 2
	OUTPUT:
		status

int
ffphbn(fptr,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	long nrows
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	long pcount
	int &status
	ALIAS:
		CFITSIO::fits_write_btblhdr = 1
		fitsfilePtr::write_btblhdr = 2
	OUTPUT:
		status

int
ffpcks(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_write_chksum = 1
		fitsfilePtr::write_chksum = 2
	OUTPUT:
		status

int
ffpclu(fptr,colnum,frow,felem,nelem,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	int &status
	ALIAS:
		CFITSIO::fits_write_col_null = 1
		fitsfilePtr::write_col_null = 2
	OUTPUT:
		status

int
ffpcl(fptr,datatype,colnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int datatype
	int colnum
	long frow
	long felem
	long nelem
	SV * array
	int status
	ALIAS:
		CFITSIO::fits_write_col = 1
		fitsfilePtr::write_col = 2
	CODE:
		RETVAL=ffpcl(fptr,datatype,colnum,frow,felem,nelem,packND(array,datatype),&status);
	OUTPUT:
		status
		RETVAL

int
ffpclx(fptr,cnum,frow,fbit,nbits,larray,status)
	fitsfile * fptr
	int cnum
	long frow
	long fbit
	long nbits
	logical * larray
	int &status
	ALIAS:
		CFITSIO::fits_write_col_bit = 1
		fitsfilePtr::write_col_bit = 2
	OUTPUT:
		status

int
ffpcls(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	char ** array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_str = 1
		fitsfilePtr::write_col_str = 2
	OUTPUT:
		status

int
ffpcll(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_log = 1
		fitsfilePtr::write_col_log = 2
	OUTPUT:
		status

int
ffpclb(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_byt = 1
		fitsfilePtr::write_col_byt = 2
	OUTPUT:
		status

int
ffpclui(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_usht = 1
		fitsfilePtr::write_col_usht = 2
	OUTPUT:
		status

int
ffpcli(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_sht = 1
		fitsfilePtr::write_col_sht = 2
	OUTPUT:
		status

int
ffpcluk(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_uint = 1
		fitsfilePtr::write_col_uint = 2
	OUTPUT:
		status

int
ffpclk(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_int = 1
		fitsfilePtr::write_col_int = 2
	OUTPUT:
		status

int
ffpcluj(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_ulng = 1
		fitsfilePtr::write_col_ulng = 2
	OUTPUT:
		status

int
ffpclj(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_lng = 1
		fitsfilePtr::write_col_lng = 2
	OUTPUT:
		status

int
ffpcle(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_flt = 1
		fitsfilePtr::write_col_flt = 2
	OUTPUT:
		status

int
ffpcld(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_dbl = 1
		fitsfilePtr::write_col_dbl = 2
	OUTPUT:
		status

int
ffpclc(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_cmp = 1
		fitsfilePtr::write_col_cmp = 2
	OUTPUT:
		status

int
ffpclm(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_col_dblcmp = 1
		fitsfilePtr::write_col_dblcmp = 2
	OUTPUT:
		status

int
ffpcns(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	char ** array
	char * nulstr
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_str = 1
		fitsfilePtr::write_colnull_str = 2
	OUTPUT:
		status

int
ffpcnl(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical * array
	logical nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_log = 1
		fitsfilePtr::write_colnull_log = 2
	OUTPUT:
		status

int
ffpcnb(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte * array
	byte nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_byt = 1
		fitsfilePtr::write_colnull_byt = 2
	OUTPUT:
		status

int
ffpcnui(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short * array
	unsigned short nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_usht = 1
		fitsfilePtr::write_colnull_usht = 2
	OUTPUT:
		status

int
ffpcni(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short * array
	short nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_sht = 1
		fitsfilePtr::write_colnull_sht = 2
	OUTPUT:
		status

int
ffpcnuk(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int * array
	unsigned int nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_uint = 1
		fitsfilePtr::write_colnull_uint = 2
	OUTPUT:
		status

int
ffpcnk(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int * array
	int nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_int = 1
		fitsfilePtr::write_colnull_int = 2
	OUTPUT:
		status

int
ffpcnuj(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long * array
	unsigned long nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_ulng = 1
		fitsfilePtr::write_colnull_ulng = 2
	OUTPUT:
		status

int
ffpcnj(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	long * array
	long nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_lng = 1
		fitsfilePtr::write_colnull_lng = 2
	OUTPUT:
		status

int
ffpcne(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	float nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_flt = 1
		fitsfilePtr::write_colnull_flt = 2
	OUTPUT:
		status

int
ffpcnd(fptr,cnum,frow,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	double nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_colnull_dbl = 1
		fitsfilePtr::write_colnull_dbl = 2
	OUTPUT:
		status

int
ffpcom(fptr,comment,status)
	fitsfile * fptr
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_comment = 1
		fitsfilePtr::write_comment = 2
	OUTPUT:
		status

int
ffpdat(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_write_date = 1
		fitsfilePtr::write_date = 2
	OUTPUT:
		status

int
ffpdes(fptr,colnum,rownum,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long rownum
	long repeat
	long offset
	int &status
	ALIAS:
		CFITSIO::fits_write_descript = 1
		fitsfilePtr::write_descript = 2
	OUTPUT:
		status

void
ffpmsg(err_msg)
	char * err_msg
	ALIAS:
		CFITSIO::fits_write_errmsg = 1

int
ffphpr(fptr,simple,bitpix,naxis,naxes,pcount,gcount,extend,status)
	fitsfile * fptr
	int simple
	int bitpix
	int naxis
	long * naxes
	long pcount
	long gcount
	int extend
	int &status
	ALIAS:
		CFITSIO::fits_write_grphdr = 1
		fitsfilePtr::write_grphdr = 2
	OUTPUT:
		status

int
ffpgpb(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_byt = 1
		fitsfilePtr::write_grppar_byt = 2
	OUTPUT:
		status

int
ffpgpui(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_usht = 1
		fitsfilePtr::write_grppar_usht = 2
	OUTPUT:
		status

int
ffpgpi(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_sht = 1
		fitsfilePtr::write_grppar_sht = 2
	OUTPUT:
		status

int
ffpgpuk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_uint = 1
		fitsfilePtr::write_grppar_uint = 2
	OUTPUT:
		status

int
ffpgpk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_int = 1
		fitsfilePtr::write_grppar_int = 2
	OUTPUT:
		status

int
ffpgpuj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_ulng = 1
		fitsfilePtr::write_grppar_ulng = 2
	OUTPUT:
		status

int
ffpgpj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_lng = 1
		fitsfilePtr::write_grppar_lng = 2
	OUTPUT:
		status

int
ffpgpe(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_flt = 1
		fitsfilePtr::write_grppar_flt = 2
	OUTPUT:
		status

int
ffpgpd(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_grppar_dbl = 1
		fitsfilePtr::write_grppar_dbl = 2
	OUTPUT:
		status

int
ffphis(fptr,history,status)
	fitsfile * fptr
	char * history
	int &status
	ALIAS:
		CFITSIO::fits_write_history = 1
		fitsfilePtr::write_history = 2
	OUTPUT:
		status

int
ffppr(fptr,datatype,firstelem,nelem,array,status)
	fitsfile * fptr
	int datatype
	long firstelem
	long nelem
	SV * array
	int status
	ALIAS:
		CFITSIO::fits_write_img = 1
		fitsfilePtr::write_img = 2
	CODE:
		RETVAL=ffppr(fptr,datatype,firstelem,nelem,packND(array,datatype),&status);
	OUTPUT:
		status
		RETVAL

int
ffppru(fptr,group,felem,nelem,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int &status
	ALIAS:
		CFITSIO::fits_write_img_null = 1
		fitsfilePtr::write_img_null = 2
	OUTPUT:
		status

int
ffpprb(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_byt = 1
		fitsfilePtr::write_img_byt = 2
	OUTPUT:
		status

int
ffpprui(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_usht = 1
		fitsfilePtr::write_img_usht = 2
	OUTPUT:
		status

int
ffppri(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_sht = 1
		fitsfilePtr::write_img_sht = 2
	OUTPUT:
		status

int
ffppruk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_uint = 1
		fitsfilePtr::write_img_uint = 2
	OUTPUT:
		status

int
ffpprk(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_int = 1
		fitsfilePtr::write_img_int = 2
	OUTPUT:
		status

int
ffppruj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_ulng = 1
		fitsfilePtr::write_img_ulng = 2
	OUTPUT:
		status

int
ffpprj(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_lng = 1
		fitsfilePtr::write_img_lng = 2
	OUTPUT:
		status

int
ffppre(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_flt = 1
		fitsfilePtr::write_img_flt = 2
	OUTPUT:
		status

int
ffpprd(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_img_dbl = 1
		fitsfilePtr::write_img_dbl = 2
	OUTPUT:
		status

int
ffphps(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	ALIAS:
		CFITSIO::fits_write_imghdr = 1
		fitsfilePtr::write_imghdr = 2
	OUTPUT:
		status

int
ffppn(fptr,datatype,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int datatype
	long felem
	long nelem
	SV * array
	SV * nulval
	int status
	ALIAS:
		CFITSIO::fits_write_imgnull = 1
		fitsfilePtr::write_imgnull = 2
	CODE:
		RETVAL=ffppn(fptr,datatype,felem,nelem,packND(array,datatype),pack1D(nulval,datatype),&status);
	OUTPUT:
		status
		RETVAL

int
ffppnb(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array
	byte nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_byt = 1
		fitsfilePtr::write_imgnull_byt = 2
	OUTPUT:
		status

int
ffppnui(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array
	unsigned short nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_usht = 1
		fitsfilePtr::write_imgnull_usht = 2
	OUTPUT:
		status

int
ffppni(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array
	short nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_sht = 1
		fitsfilePtr::write_imgnull_sht = 2
	OUTPUT:
		status

int
ffppnuk(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array
	unsigned int nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_uint = 1
		fitsfilePtr::write_imgnull_uint = 2
	OUTPUT:
		status

int
ffppnk(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array
	int nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_int = 1
		fitsfilePtr::write_imgnull_int = 2
	OUTPUT:
		status

int
ffppnuj(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array
	unsigned long nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_ulng = 1
		fitsfilePtr::write_imgnull_ulng = 2
	OUTPUT:
		status

int
ffppnj(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array
	long nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_lng = 1
		fitsfilePtr::write_imgnull_lng = 2
	OUTPUT:
		status

int
ffppne(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array
	float nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_flt = 1
		fitsfilePtr::write_imgnull_flt = 2
	OUTPUT:
		status

int
ffppnd(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array
	double nulval
	int &status
	ALIAS:
		CFITSIO::fits_write_imgnull_dbl = 1
		fitsfilePtr::write_imgnull_dbl = 2
	OUTPUT:
		status

int
ffpky(fptr,datatype,keyname,value,comment,status)
	fitsfile * fptr
	int datatype
	char * keyname
	SV * value
	char * comment
	int status
	ALIAS:
		CFITSIO::fits_write_key = 1
		fitsfilePtr::write_key = 2
	PREINIT:
		void * send;
	CODE:
		if (datatype == TLOGICAL)
			send = pack1D(value,TINT);
		else
			send = pack1D(value,datatype);
		RETVAL=ffpky(fptr,datatype,keyname,send,comment,&status);
	OUTPUT:
		status
		RETVAL

int
ffpkls(fptr,keyname,longstr,comment,status)
	fitsfile * fptr
	char * keyname
	char * longstr
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_longstr = 1
		fitsfilePtr::write_key_longstr = 2
	OUTPUT:
		status

int
ffplsw(fptr,status)
	fitsfile * fptr
	int &status
	ALIAS:
		CFITSIO::fits_write_key_longwarn = 1
		fitsfilePtr::write_key_longwarn = 2
	OUTPUT:
		status

int
ffpkyu(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_null = 1
		fitsfilePtr::write_key_null = 2
	OUTPUT:
		status

int
ffpktp(fptr,filename,status)
	fitsfile * fptr
	char * filename
	int &status
	ALIAS:
		CFITSIO::fits_write_key_template = 1
		fitsfilePtr::write_key_template = 2
	OUTPUT:
		status

int
ffpkyt(fptr,keyname,intval,frac,comment,status)
	fitsfile * fptr
	char * keyname
	long intval
	double frac
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_triple = 1
		fitsfilePtr::write_key_triple = 2
	OUTPUT:
		status

int
ffpunt(fptr,keyname,unit,status)
	fitsfile * fptr
	char * keyname
	char * unit
	int &status
	ALIAS:
		CFITSIO::fits_write_key_unit = 1
		fitsfilePtr::write_key_unit = 2
	OUTPUT:
		status

int
ffpkys(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_str = 1
		fitsfilePtr::write_key_str = 2
	OUTPUT:
		status

int
ffpkyl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_log = 1
		fitsfilePtr::write_key_log = 2
	OUTPUT:
		status

int
ffpkyj(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_lng = 1
		fitsfilePtr::write_key_lng = 2
	OUTPUT:
		status

int
ffpkye(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_flt = 1
		fitsfilePtr::write_key_flt = 2
	OUTPUT:
		status

int
ffpkyf(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_fixflt = 1
		fitsfilePtr::write_key_fixflt = 2
	OUTPUT:
		status

int
ffpkyd(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_dbl = 1
		fitsfilePtr::write_key_dbl = 2
	OUTPUT:
		status

int
ffpkyg(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_fixdbl = 1
		fitsfilePtr::write_key_fixdbl = 2
	OUTPUT:
		status

int
ffpkyc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_cmp = 1
		fitsfilePtr::write_key_cmp = 2
	OUTPUT:
		status

int
ffpkfc(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_fixcmp = 1
		fitsfilePtr::write_key_fixcmp = 2
	OUTPUT:
		status

int
ffpkym(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_dblcmp = 1
		fitsfilePtr::write_key_dblcmp = 2
	OUTPUT:
		status

int
ffpkfm(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	ALIAS:
		CFITSIO::fits_write_key_fixdblcmp = 1
		fitsfilePtr::write_key_fixdblcmp = 2
	OUTPUT:
		status

int
ffpkns(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	char ** value
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_str = 1
		fitsfilePtr::write_keys_str = 2
	OUTPUT:
		status

int
ffpknl(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	int * value
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_log = 1
		fitsfilePtr::write_keys_log = 2
	OUTPUT:
		status

int
ffpknj(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	long * value
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_lng = 1
		fitsfilePtr::write_keys_lng = 2
	OUTPUT:
		status

int
ffpkne(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	float * value
	int decimals
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_flt = 1
		fitsfilePtr::write_keys_flt = 2
	OUTPUT:
		status

int
ffpknf(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	float * value
	int decimals
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_fixflt = 1
		fitsfilePtr::write_keys_fixflt = 2
	OUTPUT:
		status

int
ffpknd(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	double * value
	int decimals
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_dbl = 1
		fitsfilePtr::write_keys_dbl = 2
	OUTPUT:
		status

int
ffpkng(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	double * value
	int decimals
	char ** comment
	int &status
	ALIAS:
		CFITSIO::fits_write_keys_fixdbl = 1
		fitsfilePtr::write_keys_fixdbl = 2
	OUTPUT:
		status

int
ffpprn(fptr,felem,nelem,status)
	fitsfile * fptr
	long felem
	long nelem
	int &status
	ALIAS:
		CFITSIO::fits_write_null_img = 1
		fitsfilePtr::write_null_img = 2
	OUTPUT:
		status

int
ffprec(fptr,card,status)
	fitsfile * fptr
	char * card
	int &status
	ALIAS:
		CFITSIO::fits_write_record = 1
		fitsfilePtr::write_record = 2
	OUTPUT:
		status

int
ffpssb(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	byte * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_byt = 1
		fitsfilePtr::write_subset_byt = 2
	OUTPUT:
		status

int
ffpssui(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_usht = 1
		fitsfilePtr::write_subset_usht = 2
	OUTPUT:
		status

int
ffpssi(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	short * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_sht = 1
		fitsfilePtr::write_subset_sht = 2
	OUTPUT:
		status

int
ffpssuk(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_uint = 1
		fitsfilePtr::write_subset_uint = 2
	OUTPUT:
		status

int
ffpssk(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	int * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_int = 1
		fitsfilePtr::write_subset_int = 2
	OUTPUT:
		status

int
ffpssuj(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_ulng = 1
		fitsfilePtr::write_subset_ulng = 2
	OUTPUT:
		status

int
ffpssj(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	long * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_lng = 1
		fitsfilePtr::write_subset_lng = 2
	OUTPUT:
		status

int
ffpsse(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	float * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_flt = 1
		fitsfilePtr::write_subset_flt = 2
	OUTPUT:
		status

int
ffpssd(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	double * array
	int &status
	ALIAS:
		CFITSIO::fits_write_subset_dbl = 1
		fitsfilePtr::write_subset_dbl = 2
	OUTPUT:
		status

int
ffptbb(fptr,frow,fchar,nchars,values,status)
	fitsfile * fptr
	long frow
	long fchar
	long nchars
	byte * values;
	int &status
	ALIAS:
		CFITSIO::fits_write_tblbytes = 1
		fitsfilePtr::write_tblbytes = 2
	OUTPUT:
		status

int
ffptdm(fptr,colnum,naxis,naxes,status)
	fitsfile * fptr
	int colnum
	int naxis
	long * naxes
	int &status
	ALIAS:
		CFITSIO::fits_write_tdim = 1
		fitsfilePtr::write_tdim = 2
	OUTPUT:
		status

int
ffpthp(fptr,theap,status)
	fitsfile * fptr
	long theap
	int &status
	ALIAS:
		CFITSIO::fits_write_theap = 1
		fitsfilePtr::write_theap = 2
	OUTPUT:
		status
