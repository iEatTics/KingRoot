.class abstract enum Lcloudsdk/ext/kr/ProgressHandler$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcloudsdk/ext/kr/ProgressHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcloudsdk/ext/kr/ProgressHandler$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum u:Lcloudsdk/ext/kr/ProgressHandler$a;

.field public static final enum v:Lcloudsdk/ext/kr/ProgressHandler$a;

.field public static final enum w:Lcloudsdk/ext/kr/ProgressHandler$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    new-instance v0, Lcloudsdk/ext/kr/ProgressHandler$a$1;

    const-string v1, "ONEKEY_ROOT"

    invoke-direct {v0, v1, v2}, Lcloudsdk/ext/kr/ProgressHandler$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcloudsdk/ext/kr/ProgressHandler$a;->u:Lcloudsdk/ext/kr/ProgressHandler$a;

    .line 269
    new-instance v0, Lcloudsdk/ext/kr/ProgressHandler$a$2;

    const-string v1, "FIX_ROOT"

    invoke-direct {v0, v1, v3}, Lcloudsdk/ext/kr/ProgressHandler$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcloudsdk/ext/kr/ProgressHandler$a;->v:Lcloudsdk/ext/kr/ProgressHandler$a;

    .line 300
    new-instance v0, Lcloudsdk/ext/kr/ProgressHandler$a$3;

    const-string v1, "ROOT_SUC"

    invoke-direct {v0, v1, v4}, Lcloudsdk/ext/kr/ProgressHandler$a$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Lcloudsdk/ext/kr/ProgressHandler$a;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->u:Lcloudsdk/ext/kr/ProgressHandler$a;

    aput-object v1, v0, v2

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->v:Lcloudsdk/ext/kr/ProgressHandler$a;

    aput-object v1, v0, v3

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lcloudsdk/ext/kr/ProgressHandler$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(IIJ)J
    .locals 2

    .prologue
    .line 232
    sub-int v0, p1, p0

    int-to-long v0, v0

    div-long v0, p2, v0

    return-wide v0
.end method


# virtual methods
.method abstract a(JJ)J
.end method

.method abstract a(I)Z
.end method
