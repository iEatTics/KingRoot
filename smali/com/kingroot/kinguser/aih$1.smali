.class Lcom/kingroot/kinguser/aih$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aih;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic arx:Lcom/kingroot/kinguser/aih;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aih;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/aih$1;->arx:Lcom/kingroot/kinguser/aih;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aih$1;->arx:Lcom/kingroot/kinguser/aih;

    invoke-static {v0}, Lcom/kingroot/kinguser/aih;->a(Lcom/kingroot/kinguser/aih;)V

    .line 68
    return-void
.end method
