.class Lcom/kingroot/kinguser/cey$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cgy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cey;->alw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZp:Lcom/kingroot/kinguser/cey;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cey;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kingroot/kinguser/cey$1;->bZp:Lcom/kingroot/kinguser/cey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(ZZ)V
    .locals 2

    .prologue
    .line 173
    if-eqz p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/cey$1;->bZp:Lcom/kingroot/kinguser/cey;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cey;->a(Lcom/kingroot/kinguser/cey;I)I

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/cey$1;->bZp:Lcom/kingroot/kinguser/cey;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cey;->a(Lcom/kingroot/kinguser/cey;I)I

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cey$1;->bZp:Lcom/kingroot/kinguser/cey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cey;->a(Lcom/kingroot/kinguser/cey;I)I

    goto :goto_0
.end method
