.class Lcom/kingroot/kinguser/bee$a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bee$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bkQ:Lcom/kingroot/kinguser/beo;

.field final synthetic bkR:Lcom/kingroot/kinguser/bee$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bee$a;Lcom/kingroot/kinguser/beo;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kingroot/kinguser/bee$a$1;->bkR:Lcom/kingroot/kinguser/bee$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bee$a$1;->bkQ:Lcom/kingroot/kinguser/beo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 210
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bee$a$1;->bkQ:Lcom/kingroot/kinguser/beo;

    iget-object v2, p0, Lcom/kingroot/kinguser/bee$a$1;->bkQ:Lcom/kingroot/kinguser/beo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/beo;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 211
    return-void
.end method
