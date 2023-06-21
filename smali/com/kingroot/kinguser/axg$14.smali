.class Lcom/kingroot/kinguser/axg$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->Q(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYA:I

.field final synthetic aYv:Lcom/kingroot/kinguser/axg;

.field final synthetic ayt:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;II)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$14;->aYv:Lcom/kingroot/kinguser/axg;

    iput p2, p0, Lcom/kingroot/kinguser/axg$14;->ayt:I

    iput p3, p0, Lcom/kingroot/kinguser/axg$14;->aYA:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$14;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->c(Lcom/kingroot/kinguser/axg;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axg$14;->ayt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/PercentageIndicator;

    .line 376
    iget v1, p0, Lcom/kingroot/kinguser/axg$14;->aYA:I

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/PercentageIndicator;->setPercentage(I)V

    .line 377
    return-void
.end method
