.class public Lcom/kingroot/kinguser/ob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final xV:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "k_module_shark"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k_shark_conch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "k_shark_report"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "k_shark_request"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "k_shark_update"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/ob;->xV:[Ljava/lang/String;

    return-void
.end method
