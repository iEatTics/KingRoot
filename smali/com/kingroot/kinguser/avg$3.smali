.class Lcom/kingroot/kinguser/avg$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avg;->js(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTo:Lcom/kingroot/kinguser/avg;

.field final synthetic aTp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/kingroot/kinguser/avg$3;->aTo:Lcom/kingroot/kinguser/avg;

    iput-object p2, p0, Lcom/kingroot/kinguser/avg$3;->aTp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/avg$3;->aTp:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/ajl;->gt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :cond_0
    return-void
.end method
