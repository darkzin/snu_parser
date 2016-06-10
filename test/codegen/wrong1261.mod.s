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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #    -23(%ebp)   1  [ $v3       <char> %ebp-23 ]

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
    movl    $70146, %eax            #   0:     mul    t10 <- 70146, 14679
    movl    $14679, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $48177, %eax            #   1:     add    t11 <- 48177, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t11
    movl    %eax, 12(%ebp)         
    call    dummyBOOLfunc           #   3:     call   t12 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   4:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #   5:     assign v3 <- t13
    movb    %al, -23(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 31 of <array 12 of <array 27 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $66468, %eax            #   1:     param  1 <- 66468
    pushl   %eax                   
    jmp     l_f1_9                  #   2:     goto   9
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #   4:     goto   10
l_f1_9:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movl    $0, %eax                #   8:     if     0 # t10 goto 4
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_4                 
    jmp     l_f1_5                  #   9:     goto   5
l_f1_4:
    movl    $1, %eax                #  11:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_6                  #  12:     goto   6
l_f1_5:
    movl    $0, %eax                #  14:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_6:
    movzbl  -14(%ebp), %eax         #  16:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  17:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  18:     param  0 <- t12
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  23:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $44809, %eax            #  24:     assign v2 <- 44809
    movl    %eax, -24(%ebp)        

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
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $100, %eax              #   0:     if     100 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t10
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 39 of <array 31 of <array 12 of <array 27 of <array 1 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -39(%ebp)   1  [ $t8       <bool> %ebp-39 ]
    #    -40(%ebp)   1  [ $t9       <char> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $98, %eax               #   1:     if     98 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    jmp     l_test_4                #   5:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $87287, %eax            #   8:     if     87287 >= 24219 goto 8
    movl    $24219, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_8               
    jmp     l_test_9                #   9:     goto   9
l_test_8:
    movl    $1, %eax                #  11:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $0, %eax                #  14:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  16:     assign v0 <- t0
    movb    %al, v0                
    call    ReadInt                 #  17:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #  18:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  19:     if     0 # 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_15_if_true      
    jmp     l_test_16_if_false      #  20:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  22:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_1_while_cond     #  25:     goto   1_while_cond
l_test_0:
    movl    $31927, %eax            #  27:     sub    t3 <- 31927, 82968
    movl    $82968, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $57812, %eax            #  28:     if     57812 < t3 goto 19_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  29:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_24_if_false      #  31:     goto   24_if_false
    jmp     l_test_22               #  32:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_18               #  35:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_26_if_true       #  38:     goto   26_if_true
    jmp     l_test_26_if_true       #  39:     goto   26_if_true
l_test_26_if_true:
    movl    $99, %eax               #  41:     if     99 > 97 goto 31
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_31              
    jmp     l_test_32               #  42:     goto   32
l_test_31:
    movl    $1, %eax                #  44:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_33               #  45:     goto   33
l_test_32:
    movl    $0, %eax                #  47:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_33:
    movzbl  -29(%ebp), %eax         #  49:     assign v0 <- t4
    movb    %al, v0                
    movl    $98, %eax               #  50:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  51:     call   WriteChar
    addl    $4, %esp               
l_test_37_while_cond:
    movl    $9301, %eax             #  53:     if     9301 < 85176 goto 38_while_body
    movl    $85176, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_38_while_body   
    jmp     l_test_36               #  54:     goto   36
l_test_38_while_body:
    jmp     l_test_37_while_cond    #  56:     goto   37_while_cond
l_test_36:
    jmp     l_test_25               #  58:     goto   25
l_test_25:
l_test_41_while_cond:
    movl    $7982, %eax             #  61:     param  1 <- 7982
    pushl   %eax                   
    movl    $46438, %eax            #  62:     param  1 <- 46438
    pushl   %eax                   
    leal    v1, %eax                #  63:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  64:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  65:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  66:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  67:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  68:     if     t7 > 100 goto 44
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_44              
    jmp     l_test_45               #  69:     goto   45
l_test_44:
    movl    $1, %eax                #  71:     assign t8 <- 1
    movb    %al, -39(%ebp)         
    jmp     l_test_46               #  72:     goto   46
l_test_45:
    movl    $0, %eax                #  74:     assign t8 <- 0
    movb    %al, -39(%ebp)         
l_test_46:
    movzbl  -39(%ebp), %eax         #  76:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  77:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -40(%ebp)         
    movzbl  -40(%ebp), %eax         #  78:     if     t9 < 98 goto 42_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_42_while_body   
    jmp     l_test_40               #  79:     goto   40
l_test_42_while_body:
    jmp     l_test_41_while_cond    #  81:     goto   41_while_cond
l_test_40:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 39 of <array 31 of <array 12 of <array 27 of <array 1 of <int>>>>>>
    .long    5
    .long   39
    .long   31
    .long   12
    .long   27
    .long    1
    .skip 1566864








    # end of global data section
    #-----------------------------------------

    .end
##################################################
