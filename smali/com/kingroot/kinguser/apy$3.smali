.class Lcom/kingroot/kinguser/apy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apy;->b(Lcom/kingroot/kinguser/aqs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKn:Lcom/kingroot/kinguser/apy;

.field final synthetic aKp:Lcom/kingroot/kinguser/aqs;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apy;Lcom/kingroot/kinguser/aqs;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kingroot/kinguser/apy$3;->aKn:Lcom/kingroot/kinguser/apy;

    iput-object p2, p0, Lcom/kingroot/kinguser/apy$3;->aKp:Lcom/kingroot/kinguser/aqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/apy$3;->aKn:Lcom/kingroot/kinguser/apy;

    invoke-static {v0}, Lcom/kingroot/kinguser/apy;->c(Lcom/kingroot/kinguser/apy;)Lcom/kingroot/common/uilib/MainExpCircleView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apy$3;->aKp:Lcom/kingroot/kinguser/aqs;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpCircleView;->b(Lcom/kingroot/kinguser/aqs;)V

    .line 167
    return-void
.end method
