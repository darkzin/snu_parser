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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]

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
l_f0_1_while_cond:
    movl    $47241, %eax            #   1:     div    t4 <- 47241, 56077
    movl    $56077, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t5 <- t4, 63587
    movl    $63587, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $38791, %eax            #   3:     if     38791 < t5 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   6:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    movl    $100, %eax              #  10:     if     100 < 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
l_f0_5:
    call    dummyCHARfunc           #  15:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  16:     return t6
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 59 of <array 54 of <array 11 of <array 76 of <array 62 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 16 of <array 1 of <array 66 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

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
    movl    $2561, %eax             #   0:     add    t4 <- 2561, 79367
    movl    $79367, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 91203
    movl    $91203, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t6 <- t5, 56091
    movl    $56091, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f1_exit              
    movl    $49315, %eax            #   4:     sub    t7 <- 49315, 30789
    movl    $30789, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t8 <- t7, 25318
    movl    $25318, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t8
    jmp     l_f1_exit              
    movl    $1, %eax                #   7:     assign v3 <- 1
    movb    %al, -33(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 95 of <array 16 of <array 1 of <array 66 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 59 of <array 54 of <array 11 of <array 76 of <array 62 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 98 of <array 34 of <array 31 of <array 89 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 35 of <array 63 of <array 72 of <array 11 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 51 of <array 15 of <array 13 of <array 98 of <bool>>>>>>> %ebp+16 ]
    #   -165136812(%ebp)  165136776  [ $v3       <array 59 of <array 54 of <array 11 of <array 76 of <array 62 of <bool>>>>>> %ebp-165136812 ]
    #   -165839076(%ebp)  702264  [ $v4       <array 95 of <array 16 of <array 1 of <array 66 of <array 7 of <bool>>>>>> %ebp-165839076 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $165839064, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $41459766, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-165136812(%ebp)     # local array 'v3': 5 dimensions
    movl    $59,-165136808(%ebp)    #   dimension 1: 59 elements
    movl    $54,-165136804(%ebp)    #   dimension 2: 54 elements
    movl    $11,-165136800(%ebp)    #   dimension 3: 11 elements
    movl    $76,-165136796(%ebp)    #   dimension 4: 76 elements
    movl    $62,-165136792(%ebp)    #   dimension 5: 62 elements
    movl    $5,-165839076(%ebp)     # local array 'v4': 5 dimensions
    movl    $95,-165839072(%ebp)    #   dimension 1: 95 elements
    movl    $16,-165839068(%ebp)    #   dimension 2: 16 elements
    movl    $1,-165839064(%ebp)     #   dimension 3: 1 elements
    movl    $66,-165839060(%ebp)    #   dimension 4: 66 elements
    movl    $7,-165839056(%ebp)     #   dimension 5: 7 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_6_while_cond:
    movl    $97, %eax               #   3:     if     97 <= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #   4:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #   6:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_0                  #   8:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -165839076(%ebp), %eax  #  11:     &()    t4 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     param  2 <- t4
    pushl   %eax                   
    leal    -165136812(%ebp), %eax  #  13:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t5
    pushl   %eax                   
    movl    $15815, %eax            #  15:     div    t6 <- 15815, 69728
    movl    $69728, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #  16:     call   t7 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  19:     call   t9 <- f1
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    movl    $98, %eax               #  20:     if     98 <= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  21:     goto   12_if_false
l_f2_11_if_true:
l_f2_15_while_cond:
    movl    $98, %eax               #  24:     if     98 < 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_16_while_body     
    jmp     l_f2_14                 #  25:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  27:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_10                 #  29:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $165839064, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
l_test_4_while_cond:
    movl    $99, %eax               #   1:     if     99 < 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    call    ReadInt                 #   6:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   7:     goto   0
l_test_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     if     t2 >= 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_11              
    jmp     l_test_12               #  14:     goto   12
l_test_11:
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_13               #  17:     goto   13
l_test_12:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_13:
    movzbl  -19(%ebp), %eax         #  21:     assign v1 <- t3
    movb    %al, v1                

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
