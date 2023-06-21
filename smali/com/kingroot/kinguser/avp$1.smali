.class Lcom/kingroot/kinguser/avp$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/avp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTZ:Lcom/kingroot/kinguser/avp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avp;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kingroot/kinguser/avp$1;->aTZ:Lcom/kingroot/kinguser/avp;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/avp$1;->aTZ:Lcom/kingroot/kinguser/avp;

    invoke-static {v0}, Lcom/kingroot/kinguser/avp;->a(Lcom/kingroot/kinguser/avp;)V

    .line 53
    return-void
.end method
