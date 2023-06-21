.class Lcom/kingroot/kinguser/afu$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final ajp:Lcom/kingroot/kinguser/afu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/kingroot/kinguser/afu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/afu;-><init>(Lcom/kingroot/kinguser/afu$1;)V

    sput-object v0, Lcom/kingroot/kinguser/afu$b;->ajp:Lcom/kingroot/kinguser/afu;

    return-void
.end method

.method static synthetic vD()Lcom/kingroot/kinguser/afu;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/afu$b;->ajp:Lcom/kingroot/kinguser/afu;

    return-object v0
.end method
