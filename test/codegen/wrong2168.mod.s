##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 25 of <array 64 of <array 78 of <array 98 of <array 43 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t6
    movb    %al, -15(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_3_while_cond:
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
    movl    $99, %eax               #   8:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
l_f0_11_while_cond:
    jmp     l_f0_10                 #  11:     goto   10
    jmp     l_f0_11_while_cond      #  12:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_3_while_cond       #  14:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     if     t6 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #   9:     assign v1 <- t7
    movb    %al, -22(%ebp)         
    call    ReadInt                 #  10:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     if     t8 < 42876 goto 6
    movl    $42876, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  19:     assign v1 <- t9
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  20:     if     97 < 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  21:     goto   12_if_false
l_f1_11_if_true:
    movl    $85632, %eax            #  23:     if     85632 > 64534 goto 15
    movl    $64534, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_15                
    jmp     l_f1_16                 #  24:     goto   16
l_f1_15:
    movl    $1, %eax                #  26:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_17                 #  27:     goto   17
l_f1_16:
    movl    $0, %eax                #  29:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_17:
    movzbl  -13(%ebp), %eax         #  31:     assign v1 <- t10
    movb    %al, -22(%ebp)         
    movl    $93304, %eax            #  32:     return 93304
    jmp     l_f1_exit              
    jmp     l_f1_22_if_false        #  33:     goto   22_if_false
    jmp     l_f1_20                 #  34:     goto   20
l_f1_22_if_false:
l_f1_20:
    movl    $89492, %eax            #  37:     return 89492
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  38:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 70 of <array 74 of <array 66 of <array 96 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 7 of <array 27 of <array 7 of <array 54 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $39395, %eax            #   0:     add    t6 <- 39395, 99542
    movl    $99542, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     assign v2 <- t6
    movl    %eax, 16(%ebp)         
    movl    $98, %eax               #   2:     if     98 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_7_if_false         #   5:     goto   7_if_false
    jmp     l_f2_5                  #   6:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_8:
    call    WriteLn                 #  11:     call   WriteLn
    movl    $100, %eax              #  12:     if     100 >= 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  13:     goto   14
l_f2_13:
    movl    $1, %eax                #  15:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  16:     goto   15
l_f2_14:
    movl    $0, %eax                #  18:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  20:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  21:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $24495, %eax            #  24:     div    t8 <- 24495, 52851
    movl    $52851, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t9 <- t8, 56958
    movl    $56958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $86456, %eax            #  26:     if     86456 < t9 goto 18
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_18                
    jmp     l_f2_19                 #  27:     goto   19
l_f2_18:
    movl    $1, %eax                #  29:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_20                 #  30:     goto   20
l_f2_19:
    movl    $0, %eax                #  32:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_20:
    movzbl  -13(%ebp), %eax         #  34:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_9_while_cond:
    movl    $52349, %eax            #   6:     if     52349 <= 60179 goto 10_while_body
    movl    $60179, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #   7:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #   9:     goto   9_while_cond
l_test_8:
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_2                #  12:     goto   2
l_test_4_if_false:
l_test_2:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  16:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     assign v0 <- t3
    movb    %al, v0                
    movl    $53846, %eax            #  18:     mul    t4 <- 53846, 57754
    movl    $57754, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t5 <- t4, 82904
    movl    $82904, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     assign v1 <- t5
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
