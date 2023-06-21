.class final Lcom/kingroot/kinguser/aea$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aea;->d(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aeq:I

.field final synthetic aer:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .prologue
    .line 213
    iput p1, p0, Lcom/kingroot/kinguser/aea$8;->aeq:I

    iput-object p2, p0, Lcom/kingroot/kinguser/aea$8;->aer:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 216
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/aea$8;->aeq:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/aea$8;->aer:Ljava/util/List;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 218
    return-void
.end method
