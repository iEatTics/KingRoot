.class Lcom/kingroot/kinguser/atq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPV:Lcom/kingroot/kinguser/atq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atq;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/atq$2;->aPV:Lcom/kingroot/kinguser/atq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/kingroot/kinguser/ats;

    if-nez v2, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 157
    :cond_1
    check-cast v0, Lcom/kingroot/kinguser/ats;

    .line 159
    iget-boolean v0, v0, Lcom/kingroot/kinguser/ats;->aQc:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 160
    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/atq$2;->aPV:Lcom/kingroot/kinguser/atq;

    iput-boolean v1, v0, Lcom/kingroot/kinguser/atq;->aPT:Z

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/atq$2;->aPV:Lcom/kingroot/kinguser/atq;

    invoke-static {v0}, Lcom/kingroot/kinguser/atq;->a(Lcom/kingroot/kinguser/atq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 165
    goto :goto_0
.end method
