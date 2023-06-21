.class Lcom/kingroot/kinguser/cff$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cay:Lcom/kingroot/kinguser/cff;

.field final synthetic caz:Lcom/kingroot/kinguser/cff$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$5;->cay:Lcom/kingroot/kinguser/cff;

    iput-object p2, p0, Lcom/kingroot/kinguser/cff$5;->caz:Lcom/kingroot/kinguser/cff$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$5;->cay:Lcom/kingroot/kinguser/cff;

    iget-object v1, p0, Lcom/kingroot/kinguser/cff$5;->caz:Lcom/kingroot/kinguser/cff$d;

    iget v1, v1, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;I)Lcom/kingroot/kinguser/cff$d;

    move-result-object v2

    .line 1145
    if-nez v2, :cond_0

    .line 1157
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-boolean v0, v2, Lcom/kingroot/kinguser/cff$d;->caT:Z

    if-eqz v0, :cond_1

    .line 1152
    const v3, -0x1413290

    .line 1156
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$5;->cay:Lcom/kingroot/kinguser/cff;

    iget-object v1, p0, Lcom/kingroot/kinguser/cff$5;->caz:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/cff$d;->caK:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    goto :goto_0

    .line 1154
    :cond_1
    const v3, -0x1406f54

    goto :goto_1
.end method
