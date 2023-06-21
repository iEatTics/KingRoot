.class Lcom/kingroot/kinguser/avr$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/avr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUd:Lcom/kingroot/kinguser/avr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avr;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/avr$1;->aUd:Lcom/kingroot/kinguser/avr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/avr$1;->aUd:Lcom/kingroot/kinguser/avr;

    invoke-static {v0}, Lcom/kingroot/kinguser/avr;->a(Lcom/kingroot/kinguser/avr;)V

    .line 49
    return-void
.end method
