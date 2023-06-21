.class Lcom/kingroot/kinguser/axf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/afu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axf;->TS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYg:Lcom/kingroot/kinguser/axf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axf;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/kingroot/kinguser/axf$2;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$2;->aYg:Lcom/kingroot/kinguser/axf;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/axf;->a(Lcom/kingroot/kinguser/axf;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 282
    return-void
.end method

.method public cT(I)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/axf$2;->aYg:Lcom/kingroot/kinguser/axf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axf;->a(Lcom/kingroot/kinguser/axf;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 287
    return-void
.end method
