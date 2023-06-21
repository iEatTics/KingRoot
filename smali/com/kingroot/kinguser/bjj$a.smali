.class final Lcom/kingroot/kinguser/bjj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic bxe:Lcom/kingroot/kinguser/bjj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjj;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/kingroot/kinguser/bjj$a;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/aex$a;)V
    .locals 1

    .prologue
    .line 464
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$a;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjj;->c(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/bjj$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/kingroot/kinguser/bjj$a;->bxe:Lcom/kingroot/kinguser/bjj;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjj;->c(Lcom/kingroot/kinguser/bjj;)Lcom/kingroot/kinguser/bjj$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/bjj$b;->e(Lcom/kingroot/kinguser/aex$a;)V

    .line 467
    :cond_0
    return-void
.end method
