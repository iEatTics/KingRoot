.class Lcom/kingroot/kinguser/rm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/rm;->iJ()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gd:Lcom/kingroot/kinguser/rm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/rm;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kingroot/kinguser/rm$2;->Gd:Lcom/kingroot/kinguser/rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/rm;->iG()Lcom/kingroot/kinguser/rm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/rm;->iH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
