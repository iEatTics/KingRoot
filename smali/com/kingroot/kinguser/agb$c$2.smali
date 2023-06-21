.class Lcom/kingroot/kinguser/agb$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agb$c;->a(Lcom/kingroot/kinguser/agb$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aka:Lcom/kingroot/kinguser/agb$d;

.field final synthetic akb:Lcom/kingroot/kinguser/agb$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agb$c;Lcom/kingroot/kinguser/agb$d;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$c$2;->akb:Lcom/kingroot/kinguser/agb$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/agb$c$2;->aka:Lcom/kingroot/kinguser/agb$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c$2;->akb:Lcom/kingroot/kinguser/agb$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/agb$c;->ajS:Lcom/kingroot/kinguser/agb;

    invoke-static {v0}, Lcom/kingroot/kinguser/agb;->a(Lcom/kingroot/kinguser/agb;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$g;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iget-object v2, p0, Lcom/kingroot/kinguser/agb$c$2;->akb:Lcom/kingroot/kinguser/agb$c;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/agb$c;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/agb$g;->J(II)V

    .line 171
    iget-object v2, p0, Lcom/kingroot/kinguser/agb$c$2;->aka:Lcom/kingroot/kinguser/agb$d;

    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c$2;->aka:Lcom/kingroot/kinguser/agb$d;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/agb$d;->akd:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/kingroot/kinguser/agb$d;->akd:Z

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$c$2;->akb:Lcom/kingroot/kinguser/agb$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/agb$c;->ajS:Lcom/kingroot/kinguser/agb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agb;->notifyDataSetChanged()V

    .line 174
    :cond_0
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
