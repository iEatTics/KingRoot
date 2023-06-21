.class public Lcom/kingroot/kinguser/bzo;
.super Lcom/kingroot/kinguser/caf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/caf;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kingroot/kinguser/bzo;->e:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/kingroot/kinguser/bzo;->b:Ljava/lang/String;

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/bzo;->a:I

    .line 19
    return-void
.end method
