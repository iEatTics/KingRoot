.class Lcom/kingroot/kinguser/bjr$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byw:Lcom/kingroot/kinguser/bjr$11;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr$11;)V
    .locals 0

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$11$1;->byw:Lcom/kingroot/kinguser/bjr$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$11$1;->byw:Lcom/kingroot/kinguser/bjr$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjr$11;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->t(Lcom/kingroot/kinguser/bjr;)V

    .line 1607
    return-void
.end method
