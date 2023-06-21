.class Lcom/kingroot/kinguser/adm$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adc:Lcom/kingroot/kinguser/adm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adm;)V
    .locals 0

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$3;->adc:Lcom/kingroot/kinguser/adm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1590
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1591
    new-instance v0, Lcom/kingroot/kinguser/adm$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/adm$3$1;-><init>(Lcom/kingroot/kinguser/adm$3;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    return-void
.end method
