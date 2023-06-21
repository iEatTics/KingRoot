.class Lcom/kingroot/kinguser/axu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$4;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(II)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$4;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/aul$a;->R(II)V

    .line 443
    return-void
.end method
