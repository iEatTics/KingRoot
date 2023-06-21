.class Lcom/kingroot/kinguser/bjq$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjq;->js(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;

.field final synthetic bxX:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;I)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$6;->bxW:Lcom/kingroot/kinguser/bjq;

    iput p2, p0, Lcom/kingroot/kinguser/bjq$6;->bxX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$6;->bxW:Lcom/kingroot/kinguser/bjq;

    iget v1, p0, Lcom/kingroot/kinguser/bjq$6;->bxX:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->c(Lcom/kingroot/kinguser/bjq;I)V

    .line 741
    return-void
.end method
