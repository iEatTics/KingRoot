.class abstract Lcom/kingroot/kinguser/bnn$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnn$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field bEu:Landroid/app/Dialog;

.field final synthetic bEv:Lcom/kingroot/kinguser/bnn$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnn$a;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$a$a;->bEv:Lcom/kingroot/kinguser/bnn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/kingroot/kinguser/bnn$a$a;->bEu:Landroid/app/Dialog;

    .line 505
    return-void
.end method
