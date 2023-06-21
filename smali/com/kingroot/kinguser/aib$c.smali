.class public Lcom/kingroot/kinguser/aib$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/kingroot/kinguser/aib$c;->id:I

    .line 150
    iput-object p2, p0, Lcom/kingroot/kinguser/aib$c;->content:Ljava/lang/String;

    .line 151
    return-void
.end method
