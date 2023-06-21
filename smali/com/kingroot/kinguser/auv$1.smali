.class Lcom/kingroot/kinguser/auv$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTe:Lcom/kingroot/kinguser/auv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auv;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kingroot/kinguser/auv$1;->aTe:Lcom/kingroot/kinguser/auv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/auv$1;->aTe:Lcom/kingroot/kinguser/auv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/auv;->QW()V

    .line 149
    return-void
.end method
