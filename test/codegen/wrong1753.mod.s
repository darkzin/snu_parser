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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]

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
l_f0_1_while_cond:
    movl    $21416, %eax            #   1:     if     21416 < 65075 goto 2_while_body
    movl    $65075, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $72691, %eax            #   4:     if     72691 # 38965 goto 5_if_true
    movl    $38965, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   8:     goto   8
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
l_f0_12_while_cond:
    movl    $58725, %eax            #  17:     if     58725 < 5955 goto 13_while_body
    movl    $5955, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_13_while_body      #  18:     goto   13_while_body
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  20:     goto   12_while_cond
    movl    $48630, %eax            #  21:     add    t5 <- 48630, 56202
    movl    $56202, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     if     t5 < 96834 goto 19
    movl    $96834, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_19                
    jmp     l_f0_20                 #  23:     goto   20
l_f0_19:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_21                 #  26:     goto   21
l_f0_20:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f0_21:
    movzbl  -17(%ebp), %eax         #  30:     return t6
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99126, %eax            #   0:     div    t5 <- 99126, 38367
    movl    $38367, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     div    t6 <- t5, 25364
    movl    $25364, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     mul    t7 <- t6, 45504
    movl    $45504, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     div    t8 <- t7, 80451
    movl    $80451, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     return t8
    jmp     l_f1_exit              
    call    f0                      #   5:     call   t9 <- f0
    movb    %al, -41(%ebp)         
    call    dummyINTfunc            #   6:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     add    t11 <- t10, 40294
    movl    $40294, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t12 <- t11, 47369
    movl    $47369, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     return t12
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 61 of <array 1 of <array 55 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   5:     goto   6
    jmp     l_f2_10                 #   6:     goto   10
l_f2_10:
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
l_f2_6:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 35 of <array 61 of <array 1 of <array 55 of <array 6 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    movl    $10037, %eax            #   1:     assign v0 <- 10037
    movl    %eax, v0               
    movl    $21865, %eax            #   2:     add    t0 <- 21865, 8738
    movl    $8738, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t1 <- t0, 8774
    movl    $8774, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
    movl    $80026, %eax            #   6:     if     80026 >= 22082 goto 4_if_true
    movl    $22082, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4_if_true       
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_4_if_true:
    movl    $97, %eax               #   9:     if     97 >= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
l_test_8_if_true:
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, v1                
    movl    $47220, %eax            #  13:     if     47220 >= 24767 goto 13_if_true
    movl    $24767, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  16:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_7                #  19:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_3                #  22:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $99, %eax               #  25:     if     99 # 99 goto 17_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  26:     goto   18_if_false
l_test_17_if_true:
    movl    $100, %eax              #  28:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #  30:     param  1 <- 98
    pushl   %eax                   
    leal    v2, %eax                #  31:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  33:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movl    $68246, %eax            #  34:     if     68246 = 45229 goto 23_if_true
    movl    $45229, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  35:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  37:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_16               #  40:     goto   16
l_test_18_if_false:
l_test_16:
    call    dummyCHARfunc           #  43:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 35 of <array 61 of <array 1 of <array 55 of <array 6 of <int>>>>>>
    .long    5
    .long   35
    .long   61
    .long    1
    .long   55
    .long    6
    .skip 2818200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
