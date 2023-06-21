.class Lcom/kingroot/kinguser/aeg$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bie$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeg$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeS:Lcom/kingroot/kinguser/aeg$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeg$1$1;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingroot/kinguser/aeg$1$1$1;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1$1;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeg$1$1;->aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    if-ne v0, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1$1;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeg$1$1;->aeR:Lcom/kingroot/kinguser/aeg$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    :goto_0
    return v2

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1$1;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeg$1$1;->aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    goto :goto_0
.end method
