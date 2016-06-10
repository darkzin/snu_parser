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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 84 of <array 99 of <array 5 of <array 51 of <array 21 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f0_2                  #   0:     goto   2
    jmp     l_f0_2                  #   1:     goto   2
    jmp     l_f0_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t3
    movb    %al, -15(%ebp)         
l_f0_9_while_cond:
    movl    $18891, %eax            #  10:     if     18891 > 61587 goto 10_while_body
    movl    $61587, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_while_body:
    movl    $97, %eax               #  13:     if     97 <= 100 goto 13
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_13                
    jmp     l_f0_14                 #  14:     goto   14
l_f0_13:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_15                 #  17:     goto   15
l_f0_14:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_15:
    movzbl  -14(%ebp), %eax         #  21:     assign v2 <- t4
    movb    %al, -15(%ebp)         
    jmp     l_f0_9_while_cond       #  22:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_19_if_false        #  24:     goto   19_if_false
l_f0_22_while_cond:
    movl    $57060, %eax            #  26:     if     57060 <= 85603 goto 23_while_body
    movl    $85603, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_23_while_body     
    jmp     l_f0_21                 #  27:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  29:     goto   22_while_cond
l_f0_21:
    jmp     l_f0_exit              
    jmp     l_f0_17                 #  32:     goto   17
l_f0_19_if_false:
l_f0_17:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 61 of <array 29 of <array 90 of <array 44 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 92 of <array 82 of <array 23 of <array 96 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 72 of <array 72 of <array 77 of <array 74 of <bool>>>>>>> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
l_f1_5_while_cond:
    movl    $0, %eax                #   3:     if     0 # 0 goto 6_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    movl    $1, %eax                #   8:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $97, %eax               #  16:     if     97 > 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  17:     goto   14_if_false
l_f1_13_if_true:
    call    dummyINTfunc            #  19:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_18_while_cond:
    jmp     l_f1_18_while_cond      #  21:     goto   18_while_cond
    jmp     l_f1_12                 #  22:     goto   12
l_f1_14_if_false:
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 70 of <array 72 of <array 72 of <array 77 of <array 74 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 27 of <array 92 of <array 82 of <array 23 of <array 96 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 55 of <array 61 of <array 29 of <array 90 of <array 44 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 100 of <array 22 of <array 94 of <array 13 of <array 42 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -385288264(%ebp)  385288224  [ $v3       <array 55 of <array 61 of <array 29 of <array 90 of <array 44 of <bool>>>>>> %ebp-385288264 ]
    #   -835031392(%ebp)  449743128  [ $v4       <array 27 of <array 92 of <array 82 of <array 23 of <array 96 of <char>>>>>> %ebp-835031392 ]
    #   1392245640(%ebp)  2067690264  [ $v5       <array 70 of <array 72 of <array 72 of <array 77 of <array 74 of <bool>>>>>> %ebp+1392245640 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1392245652, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $725680411, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-385288264(%ebp)     # local array 'v3': 5 dimensions
    movl    $55,-385288260(%ebp)    #   dimension 1: 55 elements
    movl    $61,-385288256(%ebp)    #   dimension 2: 61 elements
    movl    $29,-385288252(%ebp)    #   dimension 3: 29 elements
    movl    $90,-385288248(%ebp)    #   dimension 4: 90 elements
    movl    $44,-385288244(%ebp)    #   dimension 5: 44 elements
    movl    $5,-835031392(%ebp)     # local array 'v4': 5 dimensions
    movl    $27,-835031388(%ebp)    #   dimension 1: 27 elements
    movl    $92,-835031384(%ebp)    #   dimension 2: 92 elements
    movl    $82,-835031380(%ebp)    #   dimension 3: 82 elements
    movl    $23,-835031376(%ebp)    #   dimension 4: 23 elements
    movl    $96,-835031372(%ebp)    #   dimension 5: 96 elements
    movl    $5,1392245640(%ebp)     # local array 'v5': 5 dimensions
    movl    $70,1392245644(%ebp)    #   dimension 1: 70 elements
    movl    $72,1392245648(%ebp)    #   dimension 2: 72 elements
    movl    $72,1392245652(%ebp)    #   dimension 3: 72 elements
    movl    $77,1392245656(%ebp)    #   dimension 4: 77 elements
    movl    $74,1392245660(%ebp)    #   dimension 5: 74 elements

    # function body
l_f2_1_while_cond:
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $82872, %eax            #   2:     if     82872 >= t3 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    leal    1392245640(%ebp), %eax  #   5:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  2 <- t4
    pushl   %eax                   
    leal    -835031392(%ebp), %eax  #   7:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  1 <- t5
    pushl   %eax                   
    leal    -385288264(%ebp), %eax  #   9:     &()    t6 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  11:     call   t7 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    movl    $76124, %eax            #  14:     return 76124
    jmp     l_f2_exit              
    jmp     l_f2_5                  #  15:     goto   5
l_f2_5:
l_f2_12_while_cond:
    movl    $63921, %eax            #  18:     div    t8 <- 63921, 29837
    movl    $29837, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $39285, %eax            #  19:     add    t9 <- 39285, 62181
    movl    $62181, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     if     t8 >= t9 goto 13_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  21:     goto   11
l_f2_13_while_body:
    jmp     l_f2_12_while_cond      #  23:     goto   12_while_cond
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $-1392245652, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    movl    $34626, %eax            #   1:     if     34626 < 57125 goto 2_while_body
    movl    $57125, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
    jmp     l_test_4                #   5:     goto   4
l_test_6_if_false:
l_test_4:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   9:     goto   8_while_cond
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
l_test_12_while_cond:
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  15:     if     99 >= t1 goto 13_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  16:     goto   11
l_test_13_while_body:
    movl    $1, %eax                #  18:     if     1 # 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_16_if_true      
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_12_while_cond    #  24:     goto   12_while_cond
l_test_11:
    jmp     l_test_exit            
    movl    $97, %eax               #  27:     if     97 <= 97 goto 21
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21              
    jmp     l_test_22               #  28:     goto   22
l_test_21:
    movl    $1, %eax                #  30:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_23               #  31:     goto   23
l_test_22:
    movl    $0, %eax                #  33:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_23:
    movzbl  -15(%ebp), %eax         #  35:     assign v0 <- t2
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
