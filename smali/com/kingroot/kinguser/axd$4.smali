.class Lcom/kingroot/kinguser/axd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/agd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akX:Lcom/kingroot/kinguser/agd$a;

.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$4;->this$0:Lcom/kingroot/kinguser/axd;

    iput-object p2, p0, Lcom/kingroot/kinguser/axd$4;->akX:Lcom/kingroot/kinguser/agd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18914

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$4;->this$0:Lcom/kingroot/kinguser/axd;

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$4;->akX:Lcom/kingroot/kinguser/agd$a;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V

    .line 403
    return-void
.end method
