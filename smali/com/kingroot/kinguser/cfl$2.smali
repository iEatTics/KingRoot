.class Lcom/kingroot/kinguser/cfl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ceo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caz:Lcom/kingroot/kinguser/cff$d;

.field final synthetic ccJ:Lcom/kingroot/kinguser/cfl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfl;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/cfl$2;->ccJ:Lcom/kingroot/kinguser/cfl;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfl$2;->caz:Lcom/kingroot/kinguser/cff$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    const v0, -0x280de80

    add-int/2addr p1, v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl$2;->caz:Lcom/kingroot/kinguser/cff$d;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;III)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/cfl$2;->ccJ:Lcom/kingroot/kinguser/cfl;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cfl;)Lcom/kingroot/kinguser/cfl$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cfl$2;->caz:Lcom/kingroot/kinguser/cff$d;

    invoke-interface {v0, v2, p1, p2, v1}, Lcom/kingroot/kinguser/cfl$a;->a(ZI[BLcom/kingroot/kinguser/cff$d;)V

    .line 244
    return-void
.end method
