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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 6 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $97, %eax               #   2:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   7:     goto   6
    jmp     l_f0_9                  #   8:     goto   9
l_f0_9:
l_f0_13_while_cond:
    movl    $71010, %eax            #  11:     if     71010 > 17326 goto 14_while_body
    movl    $17326, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_while_body     
    jmp     l_f0_12                 #  12:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  14:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_7_while_cond       #  16:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $81885, %eax            #   6:     add    t7 <- 81885, 54543
    movl    $54543, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t8 <- t7, 45246
    movl    $45246, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $51642, %eax            #   8:     if     51642 = t8 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   9:     goto   6
l_f1_5:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_7:
    movzbl  -21(%ebp), %eax         #  16:     assign v0 <- t9
    movb    %al, 8(%ebp)           
l_f1_10_while_cond:
    jmp     l_f1_9                  #  18:     goto   9
    jmp     l_f1_12                 #  19:     goto   12
l_f1_12:
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
l_f1_17_while_cond:
    jmp     l_f1_16                 #  24:     goto   16
l_f1_20_while_cond:
    jmp     l_f1_19                 #  26:     goto   19
    jmp     l_f1_20_while_cond      #  27:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_17_while_cond      #  29:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_10_while_cond      #  31:     goto   10_while_cond
l_f1_9:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 6 of <array 3 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -768(%ebp)  744  [ $v2       <array 1 of <array 1 of <array 10 of <array 6 of <array 3 of <int>>>>>> %ebp-768 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $756, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $189, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-768(%ebp)           # local array 'v2': 5 dimensions
    movl    $1,-764(%ebp)           #   dimension 1: 1 elements
    movl    $1,-760(%ebp)           #   dimension 2: 1 elements
    movl    $10,-756(%ebp)          #   dimension 3: 10 elements
    movl    $6,-752(%ebp)           #   dimension 4: 6 elements
    movl    $3,-748(%ebp)           #   dimension 5: 3 elements

    # function body
    movl    $98, %eax               #   0:     if     98 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   8:     param  1 <- t7
    pushl   %eax                   
    leal    -768(%ebp), %eax        #   9:     &()    t8 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  11:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_f2_6_while_cond:
    movl    $97, %eax               #  13:     if     97 > 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  16:     goto   6_while_cond
l_f2_5:
    call    dummyCHARfunc           #  18:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $756, %esp              # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
l_test_4_while_cond:
    movl    $86896, %eax            #   1:     if     86896 = 46520 goto 5_while_body
    movl    $46520, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
    movl    $98, %eax               #   7:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
    jmp     l_test_9                #   9:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $100, %eax              #  12:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_0                #  13:     goto   0
l_test_0:
    movl    $83830, %eax            #  15:     assign v1 <- 83830
    movl    %eax, v1               
    movl    $30621, %eax            #  16:     mul    t0 <- 30621, 23550
    movl    $23550, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $47041, %eax            #  17:     add    t1 <- 47041, 61204
    movl    $61204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t2 <- t1, 94382
    movl    $94382, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     sub    t3 <- t2, 33718
    movl    $33718, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t4 <- t3, 19065
    movl    $19065, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t5 <- t4, 96147
    movl    $96147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -16(%ebp), %eax         #  22:     if     t0 >= t5 goto 15
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_15              
    jmp     l_test_16               #  23:     goto   16
l_test_15:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_17               #  26:     goto   17
l_test_16:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_17:
    movzbl  -37(%ebp), %eax         #  30:     assign v2 <- t6
    movb    %al, v2                

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
