.class Lcom/kingroot/kinguser/axq$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axq$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbj:Lcom/kingroot/kinguser/axq$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axq$8;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/kingroot/kinguser/axq$8$1;->bbj:Lcom/kingroot/kinguser/axq$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$8$1;->bbj:Lcom/kingroot/kinguser/axq$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/axq$8;->bbi:Lcom/kingroot/kinguser/bcl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->ib(I)V

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/axq$8$1;->bbj:Lcom/kingroot/kinguser/axq$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/axq$8;->bbi:Lcom/kingroot/kinguser/bcl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcl;->ia(I)V

    .line 454
    return-void
.end method
