.class Lcom/kingroot/kinguser/bit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bit;->adl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buB:I

.field final synthetic buC:Lcom/kingroot/kinguser/bit;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bit;I)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/bit$1;->buC:Lcom/kingroot/kinguser/bit;

    iput p2, p0, Lcom/kingroot/kinguser/bit$1;->buB:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bit$1;->buC:Lcom/kingroot/kinguser/bit;

    iget v1, p0, Lcom/kingroot/kinguser/bit$1;->buB:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bit;->a(Lcom/kingroot/kinguser/bit;I)V

    .line 88
    return-void
.end method
