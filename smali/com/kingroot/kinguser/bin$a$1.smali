.class Lcom/kingroot/kinguser/bin$a$1;
.super Lcom/kingroot/kinguser/we$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bin$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btN:Lcom/kingroot/kinguser/bin$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$1;->btN:Lcom/kingroot/kinguser/bin$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLcom/kingroot/kinguser/wd$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$1;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->MA:Ljava/lang/String;

    iget v2, p2, Lcom/kingroot/kinguser/wd$a;->MB:I

    invoke-static {v0, v1, v2, v3, v3}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v0, Lcom/kingroot/kinguser/bin$a$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bin$a$1$1;-><init>(Lcom/kingroot/kinguser/bin$a$1;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$1;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->MA:Ljava/lang/String;

    iget v2, p2, Lcom/kingroot/kinguser/wd$a;->MB:I

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bin$a;->a(Lcom/kingroot/kinguser/bin$a;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method
