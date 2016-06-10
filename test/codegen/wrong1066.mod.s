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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 69 of <array 27 of <array 81 of <array 32 of <array 18 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_7                  #   3:     goto   7
    jmp     l_f0_7                  #   4:     goto   7
    jmp     l_f0_7                  #   5:     goto   7
    jmp     l_f0_4_while_body       #   6:     goto   4_while_body
l_f0_7:
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   9:     goto   3_while_cond

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 59 of <array 63 of <array 13 of <array 80 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 25 of <array 76 of <array 83 of <array 39 of <char>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t6 <- t5, 30345
    movl    $30345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t7 <- t6, 9643
    movl    $9643, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t8 <- t7, 32538
    movl    $32538, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     assign v3 <- t8
    movl    %eax, -40(%ebp)        
    call    dummyCHARfunc           #   5:     call   t9 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #   6:     return t9
    jmp     l_f1_exit              
    movl    $40128, %eax            #   7:     if     40128 <= 28085 goto 3
    movl    $28085, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_3                 
    jmp     l_f1_4                  #   8:     goto   4
l_f1_3:
    movl    $1, %eax                #  10:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #  11:     goto   5
l_f1_4:
    movl    $0, %eax                #  13:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_5:
    movzbl  -13(%ebp), %eax         #  15:     assign v0 <- t10
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 54 of <array 74 of <array 62 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
l_f2_1_if_true:
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
l_f2_7_while_cond:
    jmp     l_f2_6                  #   5:     goto   6
    call    ReadInt                 #   6:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_6:
    movl    $97320, %eax            #   9:     if     97320 # 92273 goto 11_if_true
    movl    $92273, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  10:     goto   12_if_false
l_f2_11_if_true:
    movl    $91629, %eax            #  12:     add    t6 <- 91629, 51329
    movl    $51329, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t7 <- t6, 74276
    movl    $74276, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t8 <- t7, 19219
    movl    $19219, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    movl    $99, %eax               #  17:     if     99 >= 97 goto 16_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  18:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  20:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_10                 #  23:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 25 of <array 76 of <array 83 of <array 39 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 20 of <array 59 of <array 63 of <array 13 of <array 80 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    leal    v2, %eax                #   1:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   3:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t1
    pushl   %eax                   
    jmp     l_test_3                #   5:     goto   3
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_4:
    movzbl  -21(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  12:     call   t3 <- f1
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               
    movl    $18480, %eax            #  15:     if     18480 <= 23647 goto 9_if_true
    movl    $23647, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  16:     goto   10_if_false
l_test_9_if_true:
    movl    $98, %eax               #  18:     if     98 <= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  19:     goto   14_if_false
l_test_13_if_true:
    movl    $99, %eax               #  21:     if     99 = 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  24:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $13850, %eax            #  27:     param  0 <- 13850
    pushl   %eax                   
    call    WriteInt                #  28:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #  29:     call   t4 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    movl    $97, %eax               #  30:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  31:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_12               #  32:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_8                #  35:     goto   8
l_test_10_if_false:
l_test_8:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    .align   4
v1:                                 # <array 20 of <array 59 of <array 63 of <array 13 of <array 80 of <char>>>>>>
    .long    5
    .long   20
    .long   59
    .long   63
    .long   13
    .long   80
    .skip 77313600
v2:                                 # <array 4 of <array 25 of <array 76 of <array 83 of <array 39 of <char>>>>>>
    .long    5
    .long    4
    .long   25
    .long   76
    .long   83
    .long   39
    .skip 24601200








    # end of global data section
    #-----------------------------------------

    .end
##################################################
