.class Lcom/kingroot/kinguser/atm$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$3;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 582
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$3;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->g(Lcom/kingroot/kinguser/atm;)V

    .line 583
    return-void
.end method
