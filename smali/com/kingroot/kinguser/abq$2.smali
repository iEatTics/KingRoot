.class Lcom/kingroot/kinguser/abq$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/abq;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZD:Lcom/kingroot/kinguser/abq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abq;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/abq$2;->ZD:Lcom/kingroot/kinguser/abq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/wo$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/abq$2;->ZD:Lcom/kingroot/kinguser/abq;

    iget-object v0, v0, Lcom/kingroot/kinguser/abq;->ZC:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method
