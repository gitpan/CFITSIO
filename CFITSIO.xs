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
fits_add_group_member(gfptr,mfptr,hdupos,status)
	fitsfile * gfptr
	fitsfile * mfptr
	int hdupos
	int &status
	OUTPUT:
		status

int
fits_ascii_tform(tform,typecode,width,decimals,status)
	char * tform
	int &typecode = NO_INIT
	long &width = NO_INIT
	int &decimals = NO_INIT
	int &status
	OUTPUT:
		typecode
		width
		decimals
		status

int
fits_binary_tform(tform,typecode,repeat,width,status)
	char * tform
	int &typecode = NO_INIT
	long &repeat  = NO_INIT
	long &width = NO_INIT
	int &status
	OUTPUT:
		typecode
		repeat
		width
		status

int
fits_calc_rows(fptr,datatype,expr,firstrow,nelements,nulval,array,anynul,status)
	fitsfile * fptr
	int datatype
	char * expr
	long firstrow
	long nelements
	SV * nulval
	void * array = NO_INIT
	int anynul = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelements,datatype);
		RETVAL=fits_calc_rows(fptr,datatype,expr,firstrow,nelements,packND(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(6),array,nelements,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_change_group(gfptr,grouptype,status)
	fitsfile * gfptr
	int grouptype
	int &status
	OUTPUT:
		status

void
fits_clear_errmsg()

int
fits_close_file(fptr, status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_compact_group(gfptr,cmopt,status)
	fitsfile * gfptr
	int cmopt
	int &status
	OUTPUT:
		status

void
fits_compare_str(templt,string,casesen,match,exact)
	char * templt
	char * string
	int casesen
	int &match
	int &exact
	OUTPUT:
		match
		exact

int
fits_copy_col(infptr,outfptr,incolnum,outcolnum,create_col,status)
	fitsfile * infptr
	fitsfile * outfptr
	int incolnum
	int outcolnum
	int create_col
	int &status
	OUTPUT:
		status

int
fits_copy_data(infptr,outfptr,status)
	fitsfile * infptr
	fitsfile * outfptr
	int &status
	OUTPUT:
		status

int
fits_copy_group(infptr,outfptr,cpopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	int cpopt
	int &status
	OUTPUT:
		status

int
fits_copy_hdu(infptr,outfptr,morekeys,status)
	fitsfile * infptr
	fitsfile * outfptr
	int morekeys
	int &status
	OUTPUT:
		status

int
fits_copy_header(infptr,outfptr,status)
	fitsfile * infptr
	fitsfile * outfptr
	int &status
	OUTPUT:
		status

int
fits_copy_key(infptr,outfptr,innum,outnum,keyroot,status)
	fitsfile * infptr
	fitsfile * outfptr
	int innum
	int outnum
	char * keyroot
	int &status
	OUTPUT:
		status

int
fits_copy_member(gfptr,mfptr,member,cpopt,status)
	fitsfile * gfptr
	fitsfile * mfptr
	long member
	int cpopt
	int &status
	OUTPUT:
		status

int
fits_create_file(fptr,name,status)
	fitsfile * &fptr = NO_INIT
	char * name
	int &status
	OUTPUT:
		fptr
		status

int
fits_create_group(fptr,grpname,grouptype,status)
	fitsfile * fptr
	char * grpname
	int grouptype
	int &status
	OUTPUT:
		status

int
fits_create_hdu(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_create_img(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	OUTPUT:
		status

int
fits_create_tbl(fptr,tbltype,naxis2,tfields,ttype,tform,tunit,extname,status)
	fitsfile * fptr
	int tbltype
	long naxis2
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	int &status
	OUTPUT:
		status

int
fits_create_template(fptr,filename,tpltfile,status)
	fitsfile * &fptr = NO_INIT
	char * filename
	char * tpltfile
	int &status
	OUTPUT:
		fptr
		status

int
fits_date2str(year,month,day,datestr,status)
	int year
	int month
	int day
	char * datestr = NO_INIT
	int status
	CODE:
		datestr = get_mortalspace(11,TBYTE); /* YYYY-MM-DD or dd/mm/yy */
		RETVAL=fits_date2str(year,month,day,datestr,&status);
	OUTPUT:
		datestr
		status
		RETVAL

unsigned long
fits_decode_chksum(ascii,complm,sum)
	char * ascii
	int complm
	unsigned long &sum
	OUTPUT:
		sum

int
fits_delete_col(fptr,colnum,status)
	fitsfile * fptr
	int colnum
	int &status
	OUTPUT:
		status

int
fits_delete_file(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_delete_hdu(fptr,hdutype,status)
	fitsfile * fptr
	int &hdutype
	int &status
	OUTPUT:
		hdutype
		status

int
fits_delete_key(fptr,keyname,status)
	fitsfile * fptr
	char * keyname
	int &status
	OUTPUT:
		status

int
fits_delete_record(fptr,keynum,status)
	fitsfile * fptr
	int keynum
	int &status
	OUTPUT:
		status

int
fits_delete_rowlist(fptr,rowlist,nrows,status)
	fitsfile * fptr
	long * rowlist
	long nrows
	int &status
	OUTPUT:
		status

int
fits_delete_rows(fptr,firstrow,nrows,status)
	fitsfile * fptr
	long firstrow
	long nrows
	int &status
	OUTPUT:
		status

void
fits_encode_chksum(sum,complm,ascii)
	unsigned long sum
	int complm
	char * ascii = NO_INIT
	CODE:
		ascii = get_mortalspace(17,TBYTE);
		fits_encode_chksum(sum,complm,ascii);
	OUTPUT:
		ascii

int
fits_file_mode(fptr,iomode,status)
	fitsfile * fptr
	int &iomode
	int &status
	OUTPUT:
		iomode
		status

int
fits_file_name(fptr,filename,status)
	fitsfile * fptr
	char * filename = NO_INIT
	int status
	CODE:
		filename = get_mortalspace(FLEN_FILENAME,TBYTE);
		RETVAL=fits_file_name(fptr,filename,&status);
	OUTPUT:
		filename
		status
		RETVAL

int
fits_find_nextkey(fptr,inclist,ninc,exclist,nexc,card,status)
	fitsfile * fptr
	char ** inclist
	int ninc
	char ** exclist
	int nexc
	char * card = NO_INIT
	int status
	CODE:
		card = get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=fits_find_nextkey(fptr,inclist,ninc,exclist,nexc,card,&status);
	OUTPUT:
		card
		status
		RETVAL

int
fits_find_rows(fptr,expr,firstrow,nrows,n_good_rows,row_status,status)
	fitsfile * fptr
	char * expr
	long firstrow
	long nrows
	long n_good_rows = NO_INIT
	char * row_status = NO_INIT
	int status
	CODE:
		row_status = get_mortalspace(nrows,TLOGICAL);
		RETVAL=fits_find_rows(fptr,expr,firstrow,nrows,&n_good_rows,row_status,&status);
		unpack1D(ST(5),row_status,nrows,TLOGICAL);
	OUTPUT:
		n_good_rows
		row_status
		status
		RETVAL

int
fits_flush_file(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_get_acolparms(fptr,colnum,ttype,tbcol,tunit,tform,scale,zero,nulstr,tdisp,status)
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
	CODE:
		ttype = get_mortalspace(FLEN_VALUE,TBYTE);
		tunit = get_mortalspace(FLEN_VALUE,TBYTE);
		tform = get_mortalspace(FLEN_VALUE,TBYTE);
		nulstr = get_mortalspace(FLEN_VALUE,TBYTE);
		tdisp = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_get_acolparms(fptr,colnum,ttype,&tbcol,tunit,tform,&scale,&zero,nulstr,tdisp,&status);
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
fits_get_bcolparms(fptr,colnum,ttype,tunit,dtype,repeat,scale,zero,nulval,tdisp,status)
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
	CODE:
		ttype = get_mortalspace(FLEN_VALUE,TBYTE);
		tunit = get_mortalspace(FLEN_VALUE,TBYTE);
		tdisp = get_mortalspace(FLEN_VALUE,TBYTE);
		dtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_get_bcolparms(fptr,colnum,ttype,tunit,dtype,&repeat,&scale,&zero,&nulval,tdisp,&status);
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
fits_get_chksum(fptr,datasum,hdusum,status)
	fitsfile * fptr
	unsigned long &datasum = NO_INIT
	unsigned long &hdusum = NO_INIT
	int &status
	OUTPUT:
		datasum
		hdusum
		status

int
fits_get_colnum(fptr,casesen,templt,colnum,status)
	fitsfile * fptr
	int casesen
	char * templt
	int &colnum = NO_INIT
	int &status
	OUTPUT:
		colnum
		status

int
fits_get_colname(fptr,casesen,templt,colname,colnum,status)
	fitsfile * fptr
	int casesen
	char * templt
	char * colname = NO_INIT
	int colnum = NO_INIT
	int status
	CODE:
		colname = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_get_colname(fptr,casesen,templt,colname,&colnum,&status);
	OUTPUT:
		colname
		colnum
		status
		RETVAL

int
fits_get_coltype(fptr,colnum,typecode,repeat,width,status)
	fitsfile * fptr
	int colnum
	int &typecode = NO_INIT
	long &repeat = NO_INIT
	long &width = NO_INIT
	int &status
	OUTPUT:
		typecode
		repeat
		width
		status

void
fits_get_errstatus(status,err_text)
	int status
	char * err_text = NO_INIT
	CODE:
		err_text = get_mortalspace(FLEN_ERRMSG,TBYTE);
		fits_get_errstatus(status,err_text);
	OUTPUT:
		err_text

int
fits_get_hdrpos(fptr,keysexist,keynum,status)
	fitsfile * fptr
	int &keysexist = NO_INIT
	int &keynum = NO_INIT
	int &status
	OUTPUT:
		keysexist
		keynum
		status

int
fits_get_hdrspace(fptr,keysexist,morekeys,status)
	fitsfile * fptr
	int &keysexist = NO_INIT
	int &morekeys = NO_INIT
	int &status
	OUTPUT:
		keysexist
		morekeys
		status

int 
fits_get_hdu_num(fptr,hdunum)
	fitsfile * fptr
	int &hdunum = NO_INIT
	OUTPUT:
		hdunum

int
fits_get_hdu_type(fptr,hdutype,status)
	fitsfile * fptr
	int &hdutype = NO_INIT
	int &status
	OUTPUT:
		hdutype
		status

int
fits_get_hduaddr(fptr,headstart,datastart,dataend,status)
	fitsfile * fptr
	long &headstart = NO_INIT
	long &datastart = NO_INIT
	long &dataend = NO_INIT
	int &status
	OUTPUT:
		headstart
		datastart
		dataend
		status

int
fits_get_keytype(value,dtype,status)
	char * value
	char &dtype = NO_INIT
	int &status
	OUTPUT:
		dtype
		status

int
fits_get_num_cols(fptr,ncols,status)
	fitsfile * fptr
	int &ncols = NO_INIT
	int &status
	OUTPUT:
		ncols
		status

int
fits_get_num_groups(mfptr,nmembers,status)
	fitsfile * mfptr
	long &nmembers = NO_INIT
	int &status
	OUTPUT:
		nmembers
		status

int
fits_get_num_hdus(fptr,hdunum,status)
	fitsfile * fptr
	int &hdunum = NO_INIT
	int &status
	OUTPUT:
		hdunum
		status

int
fits_get_num_members(gfptr,nmembers,status)
	fitsfile * gfptr
	long &nmembers = NO_INIT
	int &status
	OUTPUT:
		nmembers
		status

int
fits_get_num_rows(fptr,nrows,status)
	fitsfile * fptr
	long &nrows = NO_INIT
	int &status
	OUTPUT:
		nrows
		status

int
fits_get_rowsize(fptr,nrows,status)
	fitsfile * fptr
	long &nrows = NO_INIT
	int &status
	OUTPUT:
		nrows
		status

int
fits_get_system_time(timestr,timeref,status)
	char * timestr = NO_INIT
	int timeref = NO_INIT
	int status
	CODE:
		timestr = get_mortalspace(20,TBYTE); /* YYYY-MM-DDThh:mm:ss */
		RETVAL=fits_get_system_time(timestr,&timeref,&status);
	OUTPUT:
		timestr
		timeref
		status
		RETVAL

int
fits_get_tbcol(tfields,tform,space,rowlen,tbcol,status)
	int tfields
	char ** tform
	int space
	long rowlen = NO_INIT
	long * tbcol = NO_INIT
	int status
	CODE:
		tbcol = get_mortalspace(tfields,TLONG);
		RETVAL=fits_get_tbcol(tfields,tform,space,&rowlen,tbcol,&status);
		unpack1D(ST(4),tbcol,tfields,TLONG);
	OUTPUT:
		rowlen
		status
		RETVAL

float
fits_get_version(version)
	float &version = NO_INIT
	OUTPUT:
		version

int
fits_insert_atbl(fptr,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
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
	OUTPUT:
		status

int
fits_insert_btbl(fptr,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	long nrows 
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	long pcount
	int &status
	OUTPUT:
		status

int
fits_insert_col(fptr,colnum,ttype,tform,status)
	fitsfile * fptr
	int colnum
	char * ttype
	char * tform
	int &status
	OUTPUT:
		status

int
fits_insert_cols(fptr,colnum,ncols,ttype,tform,status)
	fitsfile * fptr
	int colnum
	int ncols
	char ** ttype
	char ** tform
	int &status
	OUTPUT:
		status

int
fits_insert_group(fptr,grpname,grouptype,status)
	fitsfile * fptr
	char * grpname
	int grouptype
	int &status
	OUTPUT:
		status

int
fits_insert_img(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	OUTPUT:
		status

int
fits_insert_key_null(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_str(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_log(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_lng(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_flt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_fixflt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_dbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_fixdbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_cmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_fixcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_dblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_key_fixdblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_insert_record(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card
	int &status
	OUTPUT:
		status

int
fits_insert_rows(fptr,firstrow,nrows,status)
	fitsfile * fptr
	long firstrow
	long nrows
	int &status
	OUTPUT:
		status

int
fits_make_keyn(keyroot,value,keyname,status)
	char * keyroot
	int value
	char * keyname = NO_INIT
	int status
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		RETVAL=fits_make_keyn(keyroot,value,keyname,&status);
	OUTPUT:
		keyname
		status
		RETVAL

int
fits_make_nkey(value,keyroot,keyname,status)
	int value
	char * keyroot
	char * keyname = NO_INIT
	int &status
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		RETVAL=fits_make_nkey(value,keyroot,keyname,&status);
	OUTPUT:
		keyname
		status
		RETVAL

int
fits_merge_groups(infptr,outfptr,mgopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	int mgopt
	int &status
	OUTPUT:
		status

int
fits_modify_card(fptr,keyname,card,status)
	fitsfile * fptr
	char * keyname
	char * card
	int &status
	OUTPUT:
		status

int
fits_modify_comment(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_null(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_str(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_log(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_lng(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_flt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_fixflt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_dbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_fixdbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_cmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_fixcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_dblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_key_fixdblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_modify_name(fptr,oldname,newname,status)
	fitsfile * fptr
	char * oldname
	char * newname
	int &status
	OUTPUT:
		status

int
fits_modify_record(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card
	int &status
	OUTPUT:
		status

int
fits_modify_vector_len(fptr,colnum,newveclen,status)
	fitsfile * fptr
	int colnum
	long newveclen
	int &status
	OUTPUT:
		status

int
fits_movabs_hdu(fptr,hdunum,hdutype,status)
	fitsfile * fptr
	int hdunum
	int &hdutype = NO_INIT
	int &status
	OUTPUT:
		hdutype
		status

int
fits_movnam_hdu(fptr,hdunum,extname,extvers,status)
	fitsfile * fptr
	int hdunum
	char * extname
	int extvers
	int &status
	OUTPUT:
		status

int
fits_movrel_hdu(fptr,nmove,hdutype,status)
	fitsfile * fptr
	int nmove
	int &hdutype = NO_INIT
	int &status
	OUTPUT:
		hdutype
		status

int
fits_open_file(fptr,filename,iomode,status)
	fitsfile * &fptr = NO_INIT
	char * filename
	int iomode
	int &status
	OUTPUT:
		fptr
		status

int
fits_open_group(mfptr,group,gfptr,status)
	fitsfile * mfptr
	int group
	fitsfile * &gfptr = NO_INIT
	int &status
	OUTPUT:
		gfptr
		status

int
fits_open_member(gfptr,member,mfptr,status)
	fitsfile * gfptr
	long member
	fitsfile * &mfptr = NO_INIT
	int &status
	OUTPUT:
		mfptr
		status

int
fits_parse_extnum(filename,hdunum,status)
	char * filename
	int &hdunum = NO_INIT
	int &status
	OUTPUT:
		hdunum
		status

int
fits_parse_input_url(filename,filetype,infile,outfile,extspec,filter,binspec,colspec,status)
	char * filename
	char * filetype
	char * infile
	char * outfile
	char * extspec
	char * filter
	char * binspec
	char * colspec
	int &status
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
fits_parse_rootname(filename,rootname,status)
	char * filename
	char * rootname
	int &status
	OUTPUT:
		rootname
		status

int
fits_parse_template(templt,card,keytype,status)
	char * templt
	char * card
	int &keytype
	int &status
	OUTPUT:
		card
		keytype
		status

int
fits_parse_value(card,value,comment,status)
	char * card
	char * value
	char * comment
	int &status
	OUTPUT:
		value
		comment
		status

int
fits_pix_to_world(xpix,ypix,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,xpos,ypos,status)
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
	OUTPUT:
		xpos
		ypos
		status

int
fits_read_2d_byt(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	byte nulval
	long dim1
	long naxis1
	long naxis2
	byte * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TBYTE);
		RETVAL=fits_read_2d_byt(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_usht(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned short nulval
	long dim1
	long naxis1
	long naxis2
	unsigned short * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TUSHORT);
		RETVAL=fits_read_2d_usht(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_sht(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	short nulval
	long dim1
	long naxis1
	long naxis2
	short * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TSHORT);
		RETVAL=fits_read_2d_sht(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_uint(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned int nulval
	long dim1
	long naxis1
	long naxis2
	unsigned int * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TUINT);
		RETVAL=fits_read_2d_uint(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_int(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	int nulval
	long dim1
	long naxis1
	long naxis2
	int * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TINT);
		RETVAL=fits_read_2d_int(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_ulng(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	unsigned long nulval
	long dim1
	long naxis1
	long naxis2
	unsigned long * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TULONG);
		RETVAL=fits_read_2d_ulng(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_lng(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	long nulval
	long dim1
	long naxis1
	long naxis2
	long * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TLONG);
		RETVAL=fits_read_2d_lng(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_flt(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	float nulval
	long dim1
	long naxis1
	long naxis2
	float * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TFLOAT);
		RETVAL=fits_read_2d_flt(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_2d_dbl(fptr,group,nulval,dim1,naxis1,naxis2,array,anynul,status)
	fitsfile * fptr
	long group
	double nulval
	long dim1
	long naxis1
	long naxis2
	double * array = NO_INIT
	int anynul
	int status
	CODE:
		long dims[2];
		dims[0]=naxis2; dims[1] = dim1;
		array = get_mortalspace(naxis2*dim1,TDOUBLE);
		RETVAL=fits_read_2d_dbl(fptr,group,nulval,dim1,naxis1,naxis2,array,&anynul,&status);
		unpack2D(ST(6),array,dims,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_byt(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TBYTE);
		RETVAL=fits_read_3d_byt(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_usht(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TUSHORT);
		RETVAL=fits_read_3d_usht(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_sht(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TSHORT);
		RETVAL=fits_read_3d_sht(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_uint(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TUINT);
		RETVAL=fits_read_3d_uint(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_int(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TINT);
		RETVAL=fits_read_3d_int(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_ulng(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TULONG);
		RETVAL=fits_read_3d_ulng(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_lng(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TLONG);
		RETVAL=fits_read_3d_lng(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_flt(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TFLOAT);
		RETVAL=fits_read_3d_flt(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_3d_dbl(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,anynul,status)
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
	CODE:
		long dims[3];
		dims[0]=naxis3; dims[1] = dim2; dims[2] = dim1;
		array = get_mortalspace(dim1*dim2*naxis3,TDOUBLE);
		RETVAL=fits_read_3d_dbl(fptr,group,nulval,dim1,dim2,naxis1,naxis2,naxis3,array,&anynul,&status);
		unpack3D(ST(8),array,dims,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_atblhdr(fptr,maxdim,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
	fitsfile * fptr
	int maxdim
	long rowlen
	long nrows
	int tfields
	char ** ttype = NO_INIT
	long * tbcol = NO_INIT
	char ** tform = NO_INIT
	char ** tunit = NO_INIT
	char * extname = NO_INIT
	int status
	CODE:
		int i,max;
		extname = (char *)get_mortalspace(FLEN_VALUE,TBYTE);
		fits_read_atblhdr(fptr,0,&rowlen,&nrows,&tfields,ttype,tbcol,tform,tunit,extname,&status);
		tbcol = (long *)get_mortalspace(tfields,TLONG);
		ttype = (char **)get_mortalspace(tfields,TSTRING);
		tform = (char **)get_mortalspace(tfields,TSTRING);
		tunit = (char **)get_mortalspace(tfields,TSTRING);
		for (i=0; i<tfields; i++) {                 /* space waste? */
			ttype[i] = get_mortalspace(FLEN_VALUE,TBYTE);
			tform[i] = get_mortalspace(FLEN_VALUE,TBYTE);
			tunit[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		}
		RETVAL=fits_read_atblhdr(fptr,tfields,&rowlen,&nrows,&tfields,ttype,tbcol,tform,tunit,extname,&status);
		unpack1D(ST(5),ttype,tfields,TSTRING);
		unpack1D(ST(6),tbcol,tfields,TLONG);
		unpack1D(ST(7),tform,tfields,TSTRING);
		unpack1D(ST(8),tunit,tfields,TSTRING);
	OUTPUT:
		rowlen
		nrows
		tfields
		extname
		status
		RETVAL

int
fits_read_btblhdr(fptr,maxdim,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	int maxdim
	long nrows
	int tfields
	char ** ttype = NO_INIT
	char ** tform = NO_INIT
	char ** tunit = NO_INIT
	char * extname = NO_INIT
	long pcount
	int status
	CODE:
		int i,max;
		extname = get_mortalspace(FLEN_VALUE,TBYTE);
		fits_read_btblhdr(fptr,0,&nrows,&tfields,ttype,tform,tunit,extname,&pcount,&status);

		ttype = (char **)get_mortalspace(tfields,TSTRING);
		tform = (char **)get_mortalspace(tfields,TSTRING);
		tunit = (char **)get_mortalspace(tfields,TSTRING);
		for (i=0; i<tfields; i++) {                 /* space waste? */
			ttype[i] = get_mortalspace(FLEN_VALUE,TBYTE);
			tform[i] = get_mortalspace(FLEN_VALUE,TBYTE);
			tunit[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		}
		RETVAL=fits_read_btblhdr(fptr,tfields,&nrows,&tfields,ttype,tform,tunit,extname,&pcount,&status);
		unpack1D(ST(4),ttype,tfields,TSTRING);
		unpack1D(ST(5),tform,tfields,TSTRING);
		unpack1D(ST(6),tunit,tfields,TSTRING);
	OUTPUT:
		nrows
		tfields
		pcount
		extname
		status
		RETVAL

int
fits_read_card(fptr,keyname,card,status)
	fitsfile * fptr
	char * keyname
	char * card = NO_INIT
	int status
	CODE:
		card = (char *)get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=fits_read_card(fptr,keyname,card,&status);
		sv_setpv((SV*)ST(2),card);
	OUTPUT:
		status
		RETVAL

int
fits_read_col(fptr,datatype,colnum,firstrow,firstelem,nelements,nulval,array,anynul,status)
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
	PREINIT:
		long col_width, i;
	CODE:
		array = get_mortalspace(nelements,datatype);
		if (datatype == TSTRING) {
			col_width = column_width(fptr,colnum);
			for (i=0;i<nelements;i++)
				*((char**)array+i)=(char *)get_mortalspace(col_width+1,TBYTE);
		}
		RETVAL=fits_read_col(fptr,datatype,colnum,firstrow,firstelem,nelements,pack1D(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(7),array,nelements,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_bit(fptr,colnum,frow,fbit,nbit,larray,status)
	fitsfile * fptr
	int colnum
	long frow
	long fbit
	long nbit
	logical * larray = NO_INIT
	int status
	CODE:
		larray = get_mortalspace(nbit,TLOGICAL);
		RETVAL=fits_read_col_bit(fptr,colnum,frow,fbit,nbit,larray,&status);
		unpack1D(ST(5),larray,nbit,TLOGICAL);
	OUTPUT:
		status

int
fits_read_col_str(fptr,colnum,firstrow,firstelem,nelements,nulstr,array,anynul,status)
	fitsfile * fptr
	int colnum
	long firstrow
	long firstelem
	long nelements
	char * nulstr
	char ** array = NO_INIT
	int anynul = NO_INIT
	int status
	PREINIT:
		long i;
		long col_size;
	CODE:
		col_size = column_width(fptr,colnum);
		array = get_mortalspace(nelements,TSTRING);
		for (i=0;i<nelements;i++)
			array[i] = (char *)get_mortalspace(col_size+1,TBYTE);
		RETVAL=fits_read_col_str(fptr,colnum,firstrow,firstelem,nelements,nulstr,array,&anynul,&status);
		unpack1D((SV*)ST(6),array,nelements,TSTRING);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_log(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical nulval
	logical * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (logical *)get_mortalspace(nelem,TLOGICAL);
		RETVAL=fits_read_col_log(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_byt(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte nulval
	byte * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (byte *)get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_col_byt(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_usht(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short nulval
	unsigned short * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (unsigned short *)get_mortalspace(nelem,TUSHORT);
		RETVAL=fits_read_col_usht(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_sht(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short nulval
	short * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (short *)get_mortalspace(nelem,TSHORT);
		RETVAL=fits_read_col_sht(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_uint(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int nulval
	unsigned int * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (unsigned int *)get_mortalspace(nelem,TUINT);
		RETVAL=fits_read_col_uint(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_int(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int nulval
	int * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (int *)get_mortalspace(nelem,TINT);
		RETVAL=fits_read_col_int(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_ulng(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long nulval
	unsigned long * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (unsigned long *)get_mortalspace(nelem,TULONG);
		RETVAL=fits_read_col_ulng(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_lng(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	long nulval
	long * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (long *)get_mortalspace(nelem,TLONG);
		RETVAL=fits_read_col_lng(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_flt(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	CODE:
		array = (float *)get_mortalspace(nelem,TFLOAT);
		RETVAL=fits_read_col_flt(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D((SV*)ST(6),(void*)array,nelem,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_dbl(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=fits_read_col_dbl(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_dblcmp(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDBLCOMPLEX);
		RETVAL=fits_read_col_dblcmp(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TDBLCOMPLEX);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_col_cmp(fptr,cnum,frow,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TCOMPLEX);
		RETVAL=fits_read_col_cmp(fptr,cnum,frow,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(6),array,nelem,TCOMPLEX);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_str(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	char ** array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	PREINIT:
		long col_size, i;
	CODE:
		col_size = column_width(fptr,colnum);
		array = get_mortalspace(nelem,TSTRING);
		for (i=0;i<nelem;i++)
			array[i] = (char *)get_mortalspace(col_size+1,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_str(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSTRING);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_log(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	logical * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TLOGICAL);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_log(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLOGICAL);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_byt(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	byte * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_byt(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TBYTE);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_usht(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_usht(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUSHORT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_sht(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_sht(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSHORT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_int(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_int(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TINT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_uint(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_uint(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUINT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_lng(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TLONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_lng(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLONG);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_ulng(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	unsigned long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TULONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_ulng(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TULONG);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_flt(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_flt(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TFLOAT);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_dbl(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_dbl(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDOUBLE);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_cmp(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TCOMPLEX);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_cmp(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TCOMPLEX);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_colnull_dblcmp(fptr,colnum,frow,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDBLCOMPLEX);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_colnull_dblcmp(fptr,colnum,frow,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDBLCOMPLEX);
		unpack1D(ST(6),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_descript(fptr,colnum,rownum,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long rownum
	long &repeat
	long &offset
	int &status
	OUTPUT:
		repeat
		offset
		status

int
fits_read_descripts(fptr,colnum,frow,nrows,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long frow
	long nrows
	long * repeat = NO_INIT
	long * offset = NO_INIT
	int status
	CODE:
		repeat = get_mortalspace(nrows,TLONG);
		offset = get_mortalspace(nrows,TLONG);
		RETVAL=fits_read_descripts(fptr,colnum,frow,nrows,repeat,offset,&status);
		unpack1D(ST(4),repeat,nrows,TLONG);
		unpack1D(ST(4),offset,nrows,TLONG);
	OUTPUT:
		status
		RETVAL

int
fits_read_errmsg(err_msg)
	char * err_msg = NO_INIT
	CODE:
		err_msg = get_mortalspace(FLEN_ERRMSG,TBYTE);
		RETVAL = fits_read_errmsg(err_msg);
	OUTPUT:
		err_msg
		RETVAL

int
fits_read_grppar_byt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_grppar_byt(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_sht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		RETVAL=fits_read_grppar_sht(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TSHORT);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_usht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		RETVAL=fits_read_grppar_usht(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TUSHORT);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_int(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TINT);
		RETVAL=fits_read_grppar_int(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TINT);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_uint(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TUINT);
		RETVAL=fits_read_grppar_uint(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TUINT);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_lng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TLONG);
		RETVAL=fits_read_grppar_lng(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TLONG);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_ulng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TULONG);
		RETVAL=fits_read_grppar_ulng(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TULONG);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_flt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		RETVAL=fits_read_grppar_flt(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TFLOAT);
	OUTPUT:
		status
		RETVAL

int
fits_read_grppar_dbl(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array = NO_INIT
	int status
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=fits_read_grppar_dbl(fptr,group,felem,nelem,array,&status);
		unpack1D(ST(4),array,nelem,TDOUBLE);
	OUTPUT:
		status
		RETVAL

int
fits_read_img(fptr,datatype,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	int datatype
	long felem
	long nelem
	SV * nulval
	void * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,datatype);
		RETVAL=fits_read_img(fptr,datatype,felem,nelem,pack1D(nulval,datatype),array,&anynul,&status);
		unpack1D(ST(5),array,nelem,datatype);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_coord(fptr,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,status)
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
	CODE:
		coordtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_read_img_coord(fptr,&xrefval,&yrefval,&xrefpix,&yrefpix,&xinc,&yinc,&rot,coordtype,&status);
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
fits_read_img_byt(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte nulval
	byte * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_img_byt(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_sht(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short nulval
	short * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		RETVAL=fits_read_img_sht(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_usht(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short nulval
	unsigned short * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		RETVAL=fits_read_img_usht(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_int(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int nulval
	int * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TINT);
		RETVAL=fits_read_img_int(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_uint(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int nulval
	unsigned int * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUINT);
		RETVAL=fits_read_img_uint(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_lng(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long nulval
	long * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TLONG);
		RETVAL=fits_read_img_lng(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_ulng(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long nulval
	unsigned long * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TULONG);
		RETVAL=fits_read_img_ulng(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_flt(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float nulval
	float * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		RETVAL=fits_read_img_flt(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_img_dbl(fptr,group,felem,nelem,nulval,array,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double nulval
	double * array = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		RETVAL=fits_read_img_dbl(fptr,group,felem,nelem,nulval,array,&anynul,&status);
		unpack1D(ST(5),array,nelem,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imghdr(fptr,maxdim,simple,bitpix,naxis,naxes,pcount,gcount,extend,status)
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
	CODE:
		fits_read_imghdr(fptr,0,&simple,&bitpix,&naxis,naxes,&pcount,&gcount,&extend,&status);
		naxes = get_mortalspace(naxis,TLONG);
		RETVAL=fits_read_imghdr(fptr,naxis,&simple,&bitpix,&naxis,naxes,&pcount,&gcount,&extend,&status);
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
fits_read_imgnull_byt(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TBYTE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_byt(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_sht(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_sht(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TSHORT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_usht(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUSHORT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_usht(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TUSHORT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_int(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_int(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TINT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_uint(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TUINT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_uint(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TUINT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_lng(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TLONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_lng(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TLONG);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_ulng(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TULONG);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_ulng(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TBYTE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_flt(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TFLOAT);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_flt(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TFLOAT);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_imgnull_dbl(fptr,group,felem,nelem,array,nularray,anynul,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array = NO_INIT
	char * nularray = NO_INIT
	int anynul
	int status
	CODE:
		array = get_mortalspace(nelem,TDOUBLE);
		nularray = get_mortalspace(nelem,TBYTE);
		RETVAL=fits_read_imgnull_dbl(fptr,group,felem,nelem,array,nularray,&anynul,&status);
		unpack1D(ST(4),array,nelem,TDOUBLE);
		unpack1D(ST(5),nularray,nelem,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_key(fptr,datatype,keyname,value,comment,status)
	fitsfile * fptr
	int datatype
	char * keyname
	void * value = NO_INIT
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		if (datatype == TSTRING)
			value = get_mortalspace(FLEN_VALUE,TBYTE);
		else if (datatype == TLOGICAL)
			value = get_mortalspace(1,TINT);
		else
			value = get_mortalspace(1,datatype);
		RETVAL=fits_read_key(fptr,datatype,keyname,value,comment,&status);
		if (datatype == TLOGICAL)
			datatype = TINT;
		unpackScalar(ST(3),value,datatype);
	OUTPUT:
		comment
		status
		RETVAL

int
fits_read_key_triple(fptr,keyname,intval,frac,comment,status)
	fitsfile * fptr
	char * keyname
	long intval
	double frac
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_triple(fptr,keyname,&intval,&frac,comment,&status);
	OUTPUT:
		intval
		frac
		comment
		status
		RETVAL

int
fits_read_key_unit(fptr,keyname,unit,status)
	fitsfile * fptr
	char * keyname
	char * unit = NO_INIT
	int status
	CODE:
		unit = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_read_key_unit(fptr,keyname,unit,&status);
	OUTPUT:
		unit
		status
		RETVAL

int
fits_read_key_longstr(fptr,keyname,longstr,comment,status)
	fitsfile * fptr
	char * keyname
	char * longstr = NO_INIT
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_longstr(fptr,keyname,&longstr,comment,&status);
		unpackScalar(ST(2),longstr,TSTRING);
		free(longstr);
	OUTPUT:
		comment
		status
		RETVAL

int
fits_read_key_str(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value = NO_INIT
	char * comment
	int status
	CODE:
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_str(fptr,keyname,value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_key_log(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_log(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_key_lng(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_lng(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_key_flt(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_flt(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_key_dbl(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	char * comment
	int status
	CODE:
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_dbl(fptr,keyname,&value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_key_cmp(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	float * value = NO_INIT
	char * comment
	int status
	CODE:
		value = get_mortalspace(1,TCOMPLEX);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_cmp(fptr,keyname,value,comment,&status);
		unpackScalar(ST(2),value,TCOMPLEX);
	OUTPUT:
		status
		comment
		RETVAL

int
fits_read_key_dblcmp(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	double * value = NO_INIT
	char * comment
	int status
	CODE:
		value = get_mortalspace(1,TDBLCOMPLEX);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_key_dblcmp(fptr,keyname,value,comment,&status);
		unpackScalar(ST(2),value,TDBLCOMPLEX);
	OUTPUT:
		comment
		status
		RETVAL

int
fits_read_keyn(fptr,keynum,keyname,value,comment,status)
	fitsfile * fptr
	int keynum
	char * keyname = NO_INIT
	char * value = NO_INIT
	char * comment
	int status
	CODE:
		keyname = get_mortalspace(FLEN_KEYWORD,TBYTE);
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_keyn(fptr,keynum,keyname,value,comment,&status);
	OUTPUT:
		keyname
		value
		comment
		status
		RETVAL

int
fits_read_keys_str(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	char ** value = NO_INIT
	int nfound
	int status
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TSTRING);
		for (i=0; i<nkeys; i++)
			value[i] = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_read_keys_str(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TSTRING);
	OUTPUT:
		nfound
		status
		RETVAL

int
fits_read_keys_log(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	int * value = NO_INIT
	int nfound
	int status
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TINT);
		RETVAL=fits_read_keys_log(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TINT);
	OUTPUT:
		nfound
		status
		RETVAL

int
fits_read_keys_lng(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	long * value = NO_INIT
	int nfound
	int status
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TLONG);
		RETVAL=fits_read_keys_lng(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TLONG);
	OUTPUT:
		nfound
		status
		RETVAL

int
fits_read_keys_flt(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	float * value = NO_INIT
	int nfound
	int status
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TFLOAT);
		RETVAL=fits_read_keys_flt(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TFLOAT);
	OUTPUT:
		nfound
		status
		RETVAL

int
fits_read_keys_dbl(fptr,keyname,nstart,nkeys,value,nfound,status)
	fitsfile * fptr
	char * keyname
	int nstart
	int nkeys
	double * value = NO_INIT
	int nfound
	int status
	PREINIT:
		int i;
	CODE:
		value=get_mortalspace(nkeys,TDOUBLE);
		RETVAL=fits_read_keys_dbl(fptr,keyname,nstart,nkeys,value,&nfound,&status);
		unpack1D(ST(4),value,(nkeys>nfound) ? nfound : nkeys,TDOUBLE);
	OUTPUT:
		nfound
		status
		RETVAL

int
fits_read_keyword(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value = NO_INIT
	char * comment
	int status
	CODE:
		value = get_mortalspace(FLEN_VALUE,TBYTE);
		if (comment != NULL)
			comment = get_mortalspace(FLEN_COMMENT,TBYTE);
		RETVAL=fits_read_keyword(fptr,keyname,value,comment,&status);
	OUTPUT:
		value
		comment
		status
		RETVAL

int
fits_read_record(fptr,keynum,card,status)
	fitsfile * fptr
	int keynum
	char * card = NO_INIT
	int status
	CODE:
		card = get_mortalspace(FLEN_CARD,TBYTE);
		RETVAL=fits_read_record(fptr,keynum,card,&status);
	OUTPUT:
		card
		status
		RETVAL

int
fits_read_subset_byt(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TBYTE);
		RETVAL=fits_read_subset_byt(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TBYTE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_sht(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TSHORT);
		RETVAL=fits_read_subset_sht(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_usht(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUSHORT);
		RETVAL=fits_read_subset_usht(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TUSHORT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_int(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TINT);
		RETVAL=fits_read_subset_int(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_uint(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TUINT);
		RETVAL=fits_read_subset_uint(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TUINT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_lng(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TLONG);
		RETVAL=fits_read_subset_lng(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TLONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_ulng(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TULONG);
		RETVAL=fits_read_subset_ulng(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TULONG);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_flt(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TFLOAT);
		RETVAL=fits_read_subset_flt(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TFLOAT);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subset_dbl(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,anynul,status)
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
	PREINIT:
		long ndata;
		int i;
	CODE:
		ndata = 1;
		for (i=0; i<naxis; i++)
			ndata *= (lpixels[i]-fpixels[i]+1)/inc[i] +
				(((lpixels[i]-fpixels[i]+1) % inc[i]) ? 1 : 0);
		array = get_mortalspace(ndata,TDOUBLE);
		RETVAL=fits_read_subset_dbl(fptr,group,naxis,naxes,fpixels,lpixels,inc,nulval,array,&anynul,&status);
		unpack1D(ST(8),array,ndata,TDOUBLE);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_byt(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_byt(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TBYTE);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_sht(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_sht(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TSHORT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_usht(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_usht(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TUSHORT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_int(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_int(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TINT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_uint(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_uint(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TUINT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_lng(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_lng(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TLONG);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_ulng(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_ulng(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TULONG);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_flt(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_flt(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TFLOAT);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_subsetnull_dbl(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,anynul,status)
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
		RETVAL=fits_read_subsetnull_dbl(fptr,group,naxis,naxes,fpixels,lpixels,inc,array,nularr,&anynul,&status);
		unpack1D(ST(7),array,ndata,TDOUBLE);
		unpack1D(ST(8),nularr,ndata,TLOGICAL);
	OUTPUT:
		anynul
		status
		RETVAL

int
fits_read_tbl_coord(fptr,xcol,ycol,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,status)
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
	CODE:
		coordtype = get_mortalspace(FLEN_VALUE,TBYTE);
		RETVAL=fits_read_tbl_coord(fptr,xcol,ycol,&xrefval,&yrefval,&xrefpix,&yrefpix,&xinc,&yinc,&rot,coordtype,&status);
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
fits_read_tblbytes(fptr,frow,fchar,nchars,values,status)
	fitsfile * fptr
	long frow
	long fchar
	long nchars
	byte * values = NO_INIT
	int status
	CODE:
		values = get_mortalspace(nchars,TBYTE);
		RETVAL=fits_read_tblbytes(fptr,frow,fchar,nchars,values,&status);
		unpack1D(ST(4),values,nchars,TBYTE);
	OUTPUT:
		status
		RETVAL

int
fits_read_tdim(fptr,colnum,maxdim,naxis,naxes,status)
	fitsfile * fptr
	int colnum
	int maxdim
	int naxis
	long * naxes = NO_INIT
	int status
	CODE:
		fits_read_tdim(fptr,colnum,0,&naxis,naxes,&status);
		naxes = get_mortalspace(naxis,TLONG);
		RETVAL=fits_read_tdim(fptr,colnum,naxis,&naxis,naxes,&status);
		unpack1D(ST(4),naxes,naxis,TLONG);
	OUTPUT:
		status
		naxis
		RETVAL

int
fits_remove_group(gfptr,rmopt,status)
	fitsfile * gfptr
	int rmopt
	int &status
	OUTPUT:
		status

int
fits_remove_member(fptr,member,rmopt,status)
	fitsfile * fptr
	long member
	int rmopt
	int &status
	OUTPUT:
		status

int
fits_reopen_file(openfptr,newfptr,status)
	fitsfile * openfptr
	fitsfile * &newfptr
	int &status
	OUTPUT:
		newfptr
		status

void
fits_report_error(stream, status)
	FILE * stream
	int status

int
fits_resize_img(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	OUTPUT:
		status

int
fits_select_rows(infptr,outfptr,expr,status)
	fitsfile * infptr
	fitsfile * outfptr
	char * expr
	int &status
	OUTPUT:
		status

int
fits_set_bscale(fptr,scale,zero,status)
	fitsfile * fptr
	double scale
	double zero
	int &status
	OUTPUT:
		status

int
fits_set_atblnull(fptr,colnum,nulstr,status)
	fitsfile * fptr
	int colnum
	char * nulstr
	int &status
	OUTPUT:
		status

int
fits_set_btblnull(fptr,colnum,nulval,status)
	fitsfile * fptr
	int colnum
	long nulval
	int &status
	OUTPUT:
		status

int
fits_set_hdrsize(fptr,morekeys,status)
	fitsfile * fptr
	int morekeys
	int &status
	OUTPUT:
		status

int
fits_set_hdustruc(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_set_imgnull(fptr,nulval,status)
	fitsfile * fptr
	long nulval
	int &status
	OUTPUT:
		status

int
fits_set_tscale(fptr,colnum,scale,zero,status)
	fitsfile * fptr
	int colnum
	double scale
	double zero
	int &status
	OUTPUT:
		status

int
fits_str2date(datestr,year,month,day,status)
	char * datestr
	int &year
	int &month
	int &day
	int &status
	OUTPUT:
		year
		month
		day
		status

int
fits_str2time(datestr,year,month,day,hour,minute,second,status)
	char * datestr
	int &year
	int &month
	int &day
	int &hour
	int &minute
	double &second
	int &status
	OUTPUT:
		year
		month
		day
		hour
		minute
		second
		status

int
fits_test_expr(fptr,expr,maxdim,datatype,nelem,naxis,naxes,status)
	fitsfile * fptr
	char * expr
	int maxdim
	int datatype
	long nelem
	int naxis
	long * naxes = NO_INIT
	int status
	CODE:
		fits_test_expr(fptr,expr,0,&datatype,&nelem,&naxis,naxes,&status);
		naxes = (long*)get_mortalspace(naxis,TLONG);
		RETVAL=fits_test_expr(fptr,expr,naxis,&datatype,&nelem,&naxis,naxes,&status);
		unpack1D((SV*)ST(5),naxes,naxis,TLONG);
	OUTPUT:
		datatype
		nelem
		naxis
		status
		RETVAL

int
fits_test_keyword(keyname,status)
	char * keyname
	int &status
	OUTPUT:
		status

int
fits_test_record(card,status)
	char * card
	int &status
	OUTPUT:
		status

int
fits_time2str(year,month,day,hr,min,sec,decimals,datestr,status)
	int year
	int month
	int day
	int hr
	int min
	double sec
	int decimals
	char * datestr = NO_INIT
	int status
	CODE:
		datestr = get_mortalspace(20+decimals,TBYTE);
		RETVAL=fits_time2str(year,month,day,hr,min,sec,decimals,datestr,&status);
	OUTPUT:
		datestr
		status
		RETVAL

int
fits_transfer_member(infptr,outfptr,member,tfopt,status)
	fitsfile * infptr
	fitsfile * outfptr
	long member
	int tfopt
	int &status
	OUTPUT:
		status

int
fits_update_card(fptr,keyname,card,status)
	fitsfile *fptr
	char * keyname
	char * card
	int &status
	OUTPUT:
		status

int
fits_update_chksum(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_update_key(fptr,datatype,keyname,value,comm,status)
	fitsfile * fptr
	int datatype
	char * keyname
	SV * value
	char * comm
	int status
	CODE:
		RETVAL=fits_update_key(fptr,datatype,keyname,pack1D(value,datatype),comm,&status);
	OUTPUT:
		status
		RETVAL

int
fits_update_key_null(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_str(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_log(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_lng(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_flt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_dbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_fixflt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_fixdbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_cmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_dblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_fixcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_update_key_fixdblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

void
fits_uppercase(string)
	char * string
	OUTPUT:
		string

int
fits_verify_chksum(fptr,dataok,hduok,status)
	fitsfile * fptr
	int &dataok
	int &hduok
	int &status
	OUTPUT:
		dataok
		hduok
		status

int
fits_verify_group(gfptr,firstfailed,status)
	fitsfile * gfptr
	long &firstfailed
	int &status
	OUTPUT:
		firstfailed
		status

int
fits_world_to_pix(xpos,ypos,xrefval,yrefval,xrefpix,yrefpix,xinc,yinc,rot,coordtype,xpix,ypix,status)
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
	OUTPUT:
		xpix
		ypix
		status

int
fits_write_2d_byt(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_sht(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_usht(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_int(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_uint(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_lng(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_ulng(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_flt(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_2d_dbl(fptr,group,dim1,naxis1,naxis2,array,status)
	fitsfile * fptr
	long group
	long dim1
	long naxis1
	long naxis2
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_byt(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_sht(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_usht(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_int(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_uint(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_lng(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_ulng(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_flt(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_3d_dbl(fptr,group,dim1,dim2,naxis1,naxis2,naxis3,array,status)
	fitsfile * fptr
	long group
	long dim1
	long dim2
	long naxis1
	long naxis2
	long naxis3
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_atblhdr(fptr,rowlen,nrows,tfields,ttype,tbcol,tform,tunit,extname,status)
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
	OUTPUT:
		status

int
fits_write_btblhdr(fptr,nrows,tfields,ttype,tform,tunit,extname,pcount,status)
	fitsfile * fptr
	long nrows
	int tfields
	char ** ttype
	char ** tform
	char ** tunit
	char * extname
	long pcount
	int &status
	OUTPUT:
		status

int
fits_write_chksum(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_write_col_null(fptr,colnum,frow,felem,nelem,status)
	fitsfile * fptr
	int colnum
	long frow
	long felem
	long nelem
	int &status
	OUTPUT:
		status

int
fits_write_col(fptr,datatype,colnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int datatype
	int colnum
	long frow
	long felem
	long nelem
	SV * array
	int status
	CODE:
		RETVAL=fits_write_col(fptr,datatype,colnum,frow,felem,nelem,packND(array,datatype),&status);
	OUTPUT:
		status
		RETVAL

int
fits_write_col_bit(fptr,cnum,frow,fbit,nbits,larray,status)
	fitsfile * fptr
	int cnum
	long frow
	long fbit
	long nbits
	logical * larray
	int &status
	OUTPUT:
		status

int
fits_write_col_str(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	char ** array
	int &status
	OUTPUT:
		status

int
fits_write_col_log(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical * array
	int &status
	OUTPUT:
		status

int
fits_write_col_byt(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_col_usht(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_col_sht(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_col_uint(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_col_int(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_col_ulng(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_col_lng(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_col_flt(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_col_dbl(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_col_cmp(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_col_dblcmp(fptr,cnum,frow,felem,nelem,array,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_colnull_str(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	char ** array
	char * nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_log(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	logical * array
	logical nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_byt(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	byte * array
	byte nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_usht(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned short * array
	unsigned short nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_sht(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	short * array
	short nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_uint(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned int * array
	unsigned int nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_int(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	int * array
	int nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_ulng(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	unsigned long * array
	unsigned long nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_flt(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	float * array
	float nulstr
	int &status
	OUTPUT:
		status

int
fits_write_colnull_dbl(fptr,cnum,frow,felem,nelem,array,nulstr,status)
	fitsfile * fptr
	int cnum
	long frow
	long felem
	long nelem
	double * array
	double nulstr
	int &status
	OUTPUT:
		status

int
fits_write_comment(fptr,comment,status)
	fitsfile * fptr
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_date(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_write_descript(fptr,colnum,rownum,repeat,offset,status)
	fitsfile * fptr
	int colnum
	long rownum
	long repeat
	long offset
	int &status
	OUTPUT:
		status

void
fits_write_errmsg(err_msg)
	char * err_msg

int
fits_write_grphdr(fptr,simple,bitpix,naxis,naxes,pcount,gcount,extend,status)
	fitsfile * fptr
	int simple
	int bitpix
	int naxis
	long * naxes
	long pcount
	long gcount
	int extend
	int &status
	OUTPUT:
		status

int
fits_write_grppar_byt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_usht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_sht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_uint(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_int(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_ulng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_lng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_flt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_grppar_dbl(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_history(fptr,history,status)
	fitsfile * fptr
	char * history
	int &status
	OUTPUT:
		status

int
fits_write_img(fptr,datatype,firstelem,nelem,array,status)
	fitsfile * fptr
	int datatype
	long firstelem
	long nelem
	SV * array
	int status
	CODE:
		fits_write_img(fptr,datatype,firstelem,nelem,packND(array,datatype),&status);
	OUTPUT:
		status

int
fits_write_img_null(fptr,group,felem,nelem,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int &status
	OUTPUT:
		status

int
fits_write_img_byt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_img_usht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_img_sht(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_img_uint(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_img_int(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_img_ulng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_img_lng(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_img_flt(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_img_dbl(fptr,group,felem,nelem,array,status)
	fitsfile * fptr
	long group
	long nelem
	long felem
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_imghdr(fptr,bitpix,naxis,naxes,status)
	fitsfile * fptr
	int bitpix
	int naxis
	long * naxes
	int &status
	OUTPUT:
		status

int
fits_write_imgnull(fptr,datatype,felem,nelem,array,nulval,status)
	fitsfile * fptr
	int datatype
	long felem
	long nelem
	SV * array
	SV * nulval
	int status
	CODE:
		RETVAL=fits_write_imgnull(fptr,datatype,felem,nelem,packND(array,datatype),pack1D(nulval,datatype),&status);
	OUTPUT:
		status
		RETVAL

int
fits_write_imgnull_byt(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	byte * array
	byte nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_usht(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned short * array
	unsigned short nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_sht(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	short * array
	short nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_uint(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned int * array
	unsigned int nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_int(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	int * array
	int nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_ulng(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	unsigned long * array
	unsigned long nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_lng(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	long * array
	long nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_flt(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	float * array
	float nulval
	int &status
	OUTPUT:
		status

int
fits_write_imgnull_dbl(fptr,group,felem,nelem,array,nulval,status)
	fitsfile * fptr
	long group
	long felem
	long nelem
	double * array
	double nulval
	int &status
	OUTPUT:
		status

int
fits_write_key(fptr,datatype,keyname,value,comment,status)
	fitsfile * fptr
	int datatype
	char * keyname
	SV * value
	char * comment
	int status
	PREINIT:
		void * send;
	CODE:
		if (datatype == TLOGICAL)
			send = pack1D(value,TINT);
		else
			send = pack1D(value,datatype);
		RETVAL=fits_write_key(fptr,datatype,keyname,send,comment,&status);
	OUTPUT:
		status
		RETVAL

int
fits_write_key_longstr(fptr,keyname,longstr,comment,status)
	fitsfile * fptr
	char * keyname
	char * longstr
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_longwarn(fptr,status)
	fitsfile * fptr
	int &status
	OUTPUT:
		status

int
fits_write_key_null(fptr,keyname,comment,status)
	fitsfile * fptr
	char * keyname
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_template(fptr,filename,status)
	fitsfile * fptr
	char * filename
	int &status
	OUTPUT:
		status

int
fits_write_key_triple(fptr,keyname,intval,frac,comment,status)
	fitsfile * fptr
	char * keyname
	long intval
	double frac
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_unit(fptr,keyname,unit,status)
	fitsfile * fptr
	char * keyname
	char * unit
	int &status
	OUTPUT:
		status

int
fits_write_key_str(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	char * value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_log(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	int value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_lng(fptr,keyname,value,comment,status)
	fitsfile * fptr
	char * keyname
	long value
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_flt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_fixflt(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_dbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_fixdbl(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_cmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_fixcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	float * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_dblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_key_fixdblcmp(fptr,keyname,value,decimals,comment,status)
	fitsfile * fptr
	char * keyname
	double * value
	int decimals
	char * comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_str(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	char ** value
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_log(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	int * value
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_lng(fptr,keyroot,nstart,nkeys,value,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	long * value
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_flt(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	float * value
	int decimals
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_fixflt(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	float * value
	int decimals
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_dbl(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	double * value
	int decimals
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_keys_fixdbl(fptr,keyroot,nstart,nkeys,value,decimals,comment,status)
	fitsfile * fptr
	char * keyroot
	int nstart
	int nkeys
	double * value
	int decimals
	char ** comment
	int &status
	OUTPUT:
		status

int
fits_write_null_img(fptr,felem,nelem,status)
	fitsfile * fptr
	long felem
	long nelem
	int &status
	OUTPUT:
		status

int
fits_write_record(fptr,card,status)
	fitsfile * fptr
	char * card
	int &status
	OUTPUT:
		status

int
fits_write_subset_byt(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	byte * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_usht(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned short * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_sht(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	short * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_uint(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned int * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_int(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	int * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_ulng(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	unsigned long * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_lng(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	long * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_flt(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	float * array
	int &status
	OUTPUT:
		status

int
fits_write_subset_dbl(fptr,group,naxis,naxes,fpixel,lpixel,array,status)
	fitsfile * fptr
	long group
	long naxis
	long * naxes
	long * fpixel
	long * lpixel
	double * array
	int &status
	OUTPUT:
		status

int
fits_write_tblbytes(fptr,frow,fchar,nchars,values,status)
	fitsfile * fptr
	long frow
	long fchar
	long nchars
	byte * values;
	int &status
	OUTPUT:
		status

int
fits_write_tdim(fptr,colnum,naxis,naxes,status)
	fitsfile * fptr
	int colnum
	int naxis
	long * naxes
	int &status
	OUTPUT:
		status

int
fits_write_theap(fptr,theap,status)
	fitsfile * fptr
	long theap
	int &status
	OUTPUT:
		status
