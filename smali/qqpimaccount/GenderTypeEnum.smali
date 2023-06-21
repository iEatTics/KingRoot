.class public final enum Lqqpimaccount/GenderTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqqpimaccount/GenderTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqqpimaccount/GenderTypeEnum;

.field public static final enum FEMALE:Lqqpimaccount/GenderTypeEnum;

.field public static final enum MALE:Lqqpimaccount/GenderTypeEnum;

.field public static final enum UNKNOWN:Lqqpimaccount/GenderTypeEnum;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lqqpimaccount/GenderTypeEnum;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lqqpimaccount/GenderTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    new-instance v0, Lqqpimaccount/GenderTypeEnum;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lqqpimaccount/GenderTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lqqpimaccount/GenderTypeEnum;->MALE:Lqqpimaccount/GenderTypeEnum;

    new-instance v0, Lqqpimaccount/GenderTypeEnum;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lqqpimaccount/GenderTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lqqpimaccount/GenderTypeEnum;->FEMALE:Lqqpimaccount/GenderTypeEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lqqpimaccount/GenderTypeEnum;

    sget-object v1, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lqqpimaccount/GenderTypeEnum;->MALE:Lqqpimaccount/GenderTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lqqpimaccount/GenderTypeEnum;->FEMALE:Lqqpimaccount/GenderTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lqqpimaccount/GenderTypeEnum;->$VALUES:[Lqqpimaccount/GenderTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lqqpimaccount/GenderTypeEnum;->flag:I

    return-void
.end method

.method public static fromInt(I)Lqqpimaccount/GenderTypeEnum;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lqqpimaccount/GenderTypeEnum;->UNKNOWN:Lqqpimaccount/GenderTypeEnum;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lqqpimaccount/GenderTypeEnum;->MALE:Lqqpimaccount/GenderTypeEnum;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lqqpimaccount/GenderTypeEnum;->FEMALE:Lqqpimaccount/GenderTypeEnum;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lqqpimaccount/GenderTypeEnum;
    .locals 1

    const-class v0, Lqqpimaccount/GenderTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqqpimaccount/GenderTypeEnum;

    return-object v0
.end method

.method public static values()[Lqqpimaccount/GenderTypeEnum;
    .locals 1

    sget-object v0, Lqqpimaccount/GenderTypeEnum;->$VALUES:[Lqqpimaccount/GenderTypeEnum;

    invoke-virtual {v0}, [Lqqpimaccount/GenderTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqqpimaccount/GenderTypeEnum;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lqqpimaccount/GenderTypeEnum;->flag:I

    return v0
.end method
