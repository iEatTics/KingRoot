.class public Lcom/kingroot/kinguser/ai/AntiInjectLogModel$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/AntiInjectLogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final GK:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "aa"

    aput-object v1, v0, v2

    const-string v1, "ac"

    aput-object v1, v0, v3

    const-string v1, "ad"

    aput-object v1, v0, v4

    const-string v1, "ae"

    aput-object v1, v0, v5

    const-string v1, "af"

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$a;->COLUMNS:[Ljava/lang/String;

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "long"

    aput-object v1, v0, v2

    const-string v1, "text"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "text"

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$a;->GK:[Ljava/lang/String;

    return-void
.end method
