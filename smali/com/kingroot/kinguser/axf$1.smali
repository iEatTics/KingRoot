.class Lcom/kingroot/kinguser/axf$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYg:Lcom/kingroot/kinguser/axf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axf;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/axf$1;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$1;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axf;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->h(Landroid/content/Context;I)V

    .line 90
    new-instance v0, Lcom/kingroot/kinguser/axf$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axf$1$1;-><init>(Lcom/kingroot/kinguser/axf$1;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 97
    return-void
.end method
