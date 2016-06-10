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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $57197, %eax            #   0:     div    t2 <- 57197, 56072
    movl    $56072, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t2
    movl    %eax, -36(%ebp)        
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t4 <- t3, 39126
    movl    $39126, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $87997, %eax            #   6:     add    t5 <- 87997, 84640
    movl    $84640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     add    t6 <- t5, 44271
    movl    $44271, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     assign v1 <- t6
    movl    %eax, -36(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_exit              
    call    f1                      #   1:     call   f1
    movl    $55209, %eax            #   2:     mul    t2 <- 55209, 21111
    movl    $21111, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t3 <- t2, 54120
    movl    $54120, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   5:     call   f0
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4_while_cond     #   3:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #   9:     assign v0 <- 97
    movb    %al, v0                
l_test_12_while_cond:
    movl    $98, %eax               #  11:     if     98 < 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_13_while_body   
    jmp     l_test_11               #  12:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_11:
    jmp     l_test_7                #  16:     goto   7
l_test_7:
    movl    $100, %eax              #  18:     assign v0 <- 100
    movb    %al, v0                
l_test_17_while_cond:
    movl    $21795, %eax            #  20:     mul    t0 <- 21795, 34761
    movl    $34761, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $36437, %eax            #  21:     if     36437 <= t0 goto 18_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_18_while_body   
    jmp     l_test_16               #  22:     goto   16
l_test_18_while_body:
    movl    $100, %eax              #  24:     if     100 # 98 goto 21_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_21_if_true      
    jmp     l_test_22_if_false      #  25:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  27:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $97, %eax               #  30:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_17_while_cond    #  31:     goto   17_while_cond
l_test_16:
    jmp     l_test_27               #  33:     goto   27
    jmp     l_test_27               #  34:     goto   27
    movl    $1, %eax                #  35:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_28               #  36:     goto   28
l_test_27:
    movl    $0, %eax                #  38:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_28:
    movzbl  -17(%ebp), %eax         #  40:     assign v1 <- t1
    movb    %al, v1                
l_test_32_while_cond:
    jmp     l_test_33_while_body    #  42:     goto   33_while_body
    jmp     l_test_33_while_body    #  43:     goto   33_while_body
    jmp     l_test_33_while_body    #  44:     goto   33_while_body
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  46:     goto   32_while_cond

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
