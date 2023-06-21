.class Lcom/kingroot/kinguser/alc$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alc$b;->a(Lcom/kingroot/kinguser/amc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avS:Lcom/kingroot/kinguser/alc$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alc$b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kingroot/kinguser/alc$b$1;->avS:Lcom/kingroot/kinguser/alc$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/alc$b$1;->avS:Lcom/kingroot/kinguser/alc$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alc$b;->avR:Lcom/kingroot/kinguser/alc;

    invoke-static {v0}, Lcom/kingroot/kinguser/alc;->a(Lcom/kingroot/kinguser/alc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/alc$b$1;->avS:Lcom/kingroot/kinguser/alc$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alc$b;->avR:Lcom/kingroot/kinguser/alc;

    invoke-static {v0}, Lcom/kingroot/kinguser/alc;->a(Lcom/kingroot/kinguser/alc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alc$b$1;->avS:Lcom/kingroot/kinguser/alc$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alc$b;->avR:Lcom/kingroot/kinguser/alc;

    invoke-static {v0}, Lcom/kingroot/kinguser/alc;->a(Lcom/kingroot/kinguser/alc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alc$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/alc$b$1;->avS:Lcom/kingroot/kinguser/alc$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alc$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/alc$a;->c(Landroid/view/View;I)V

    goto :goto_0
.end method
