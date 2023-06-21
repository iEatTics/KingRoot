.class Lcom/kingroot/kinguser/agb$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agb$a;->a(Lcom/kingroot/kinguser/agb$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajT:Lcom/kingroot/kinguser/agb$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agb$a;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/kingroot/kinguser/agb$a$1;->ajT:Lcom/kingroot/kinguser/agb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/agb$a$1;->ajT:Lcom/kingroot/kinguser/agb$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/agb$a;->ajS:Lcom/kingroot/kinguser/agb;

    invoke-static {v0}, Lcom/kingroot/kinguser/agb;->b(Lcom/kingroot/kinguser/agb;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agb$f;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/kingroot/kinguser/agb$a$1;->ajT:Lcom/kingroot/kinguser/agb$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/agb$a;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/agb$f;->n(IZ)V

    .line 256
    :cond_0
    return-void
.end method
