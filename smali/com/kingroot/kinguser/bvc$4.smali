.class Lcom/kingroot/kinguser/bvc$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->b(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPg:Lcom/kingroot/kinguser/bug;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bug;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$4;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$4;->bPg:Lcom/kingroot/kinguser/bug;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$4;->bPg:Lcom/kingroot/kinguser/bug;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$4;->bPg:Lcom/kingroot/kinguser/bug;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bug;->fD(I)V

    .line 1184
    :cond_0
    return-void
.end method
