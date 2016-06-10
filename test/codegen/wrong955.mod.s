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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 66501
    movl    $66501, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t5
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 1 of <array 4 of <array 1 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 8 of <array 1 of <array 2 of <char>>>>>>> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    movl    $0, %eax                #   2:     if     0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   f0
    addl    $4, %esp               
l_f1_7_while_cond:
    movl    $30032, %eax            #   9:     if     30032 > 94384 goto 8_while_body
    movl    $94384, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #  10:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  12:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  17:     return t5
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 4 of <array 8 of <array 1 of <array 2 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 1 of <array 4 of <array 1 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 9 of <array 3 of <array 4 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 9 of <array 8 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -49(%ebp)   1  [ $v3       <bool> %ebp-49 ]
    #   -276(%ebp)  224  [ $v4       <array 5 of <array 1 of <array 4 of <array 1 of <array 10 of <char>>>>>> %ebp-276 ]
    #   -492(%ebp)  216  [ $v5       <array 3 of <array 4 of <array 8 of <array 1 of <array 2 of <char>>>>>> %ebp-492 ]
    #   -496(%ebp)   4  [ $v6       <int> %ebp-496 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $484, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $121, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-276(%ebp)           # local array 'v4': 5 dimensions
    movl    $5,-272(%ebp)           #   dimension 1: 5 elements
    movl    $1,-268(%ebp)           #   dimension 2: 1 elements
    movl    $4,-264(%ebp)           #   dimension 3: 4 elements
    movl    $1,-260(%ebp)           #   dimension 4: 1 elements
    movl    $10,-256(%ebp)          #   dimension 5: 10 elements
    movl    $5,-492(%ebp)           # local array 'v5': 5 dimensions
    movl    $3,-488(%ebp)           #   dimension 1: 3 elements
    movl    $4,-484(%ebp)           #   dimension 2: 4 elements
    movl    $8,-480(%ebp)           #   dimension 3: 8 elements
    movl    $1,-476(%ebp)           #   dimension 4: 1 elements
    movl    $2,-472(%ebp)           #   dimension 5: 2 elements

    # function body
    movl    $20476, %eax            #   0:     if     20476 > 29422 goto 1_if_true
    movl    $29422, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     if     98 > 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_8                  #   6:     goto   8
l_f2_8:
    movl    $99, %eax               #   8:     if     99 <= 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_12                
    jmp     l_f2_13                 #   9:     goto   13
l_f2_12:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_14                 #  12:     goto   14
l_f2_13:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_14:
    movzbl  -21(%ebp), %eax         #  16:     assign v3 <- t3
    movb    %al, -49(%ebp)         
    movl    $97, %eax               #  17:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_4                  #  18:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #  21:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -492(%ebp), %eax        #  24:     &()    t4 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  1 <- t4
    pushl   %eax                   
    leal    -276(%ebp), %eax        #  26:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  28:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  29:     return t6
    jmp     l_f2_exit              
    movl    $14415, %eax            #  30:     sub    t7 <- 14415, 55274
    movl    $55274, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t8 <- t7, 60249
    movl    $60249, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  32:     sub    t9 <- t8, 62385
    movl    $62385, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  33:     sub    t10 <- t9, 18977
    movl    $18977, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  34:     add    t11 <- t10, 7630
    movl    $7630, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     assign v6 <- t11
    movl    %eax, -496(%ebp)       

l_f2_exit:
    # epilogue
    addl    $484, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $16262, %eax            #   0:     if     16262 < 75345 goto 1_if_true
    movl    $75345, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $98, %eax               #   4:     if     98 # 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  12:     if     98 >= 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  21:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_17_while_cond:
    jmp     l_test_16               #  23:     goto   16
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    movl    $100, %eax              #  26:     if     100 # 99 goto 22_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_if_true      
    jmp     l_test_23_if_false      #  27:     goto   23_if_false
l_test_22_if_true:
    jmp     l_test_21               #  29:     goto   21
l_test_23_if_false:
l_test_21:
    movl    $100, %eax              #  32:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_17_while_cond    #  34:     goto   17_while_cond
l_test_16:
    call    dummyProcedure          #  36:     call   dummyProcedure
    movl    $1, %eax                #  37:     assign v1 <- 1
    movb    %al, v1                

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
