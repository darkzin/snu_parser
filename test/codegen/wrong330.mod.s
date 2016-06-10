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
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 7 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   0:     if     98 = 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #   8:     assign v2 <- t8
    movb    %al, 16(%ebp)          
l_f0_6_while_cond:
    movl    $95856, %eax            #  10:     div    t9 <- 95856, 66166
    movl    $66166, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $13950, %eax            #  11:     if     13950 > t9 goto 7_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  14:     goto   6_while_cond
l_f0_5:
    movl    $48323, %eax            #  16:     add    t10 <- 48323, 2003
    movl    $2003, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     sub    t11 <- t10, 4670
    movl    $4670, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
l_f1_1_while_cond:
    movl    $0, %eax                #   1:     if     0 # 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   6:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_8_while_cond:
    jmp     l_f1_7                  #   8:     goto   7
    jmp     l_f1_8_while_cond       #   9:     goto   8_while_cond
l_f1_7:
l_f1_11_while_cond:
    movl    $98, %eax               #  12:     if     98 <= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
l_f1_15_while_cond:
    movl    $48355, %eax            #  18:     if     48355 > 84594 goto 16_while_body
    movl    $84594, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_16_while_body     
    jmp     l_f1_14                 #  19:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_1_while_cond       #  23:     goto   1_while_cond
l_f1_0:
l_f1_19_while_cond:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  27:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_19_while_cond      #  28:     goto   19_while_cond
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 10 of <array 7 of <array 4 of <array 9 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 5 of <array 4 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 3 of <array 9 of <array 9 of <array 4 of <bool>>>>>>> %ebp+20 ]
    #   -90772(%ebp)  90744  [ $v4       <array 10 of <array 7 of <array 4 of <array 9 of <array 9 of <int>>>>>> %ebp-90772 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $90760, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22690, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-90772(%ebp)         # local array 'v4': 5 dimensions
    movl    $10,-90768(%ebp)        #   dimension 1: 10 elements
    movl    $7,-90764(%ebp)         #   dimension 2: 7 elements
    movl    $4,-90760(%ebp)         #   dimension 3: 4 elements
    movl    $9,-90756(%ebp)         #   dimension 4: 9 elements
    movl    $9,-90752(%ebp)         #   dimension 5: 9 elements

    # function body
    leal    -90772(%ebp), %eax      #   0:     &()    t8 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  3 <- t8
    pushl   %eax                   
    movl    $1, %eax                #   2:     param  2 <- 1
    pushl   %eax                   
    movl    $98, %eax               #   3:     param  1 <- 98
    pushl   %eax                   
    movl    $39391, %eax            #   4:     mul    t9 <- 39391, 2586
    movl    $2586, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   6:     call   t10 <- f0
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     assign v1 <- t10
    movl    %eax, 12(%ebp)         
    call    dummyBOOLfunc           #   8:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $94771, %eax            #   9:     assign v1 <- 94771
    movl    %eax, 12(%ebp)         

l_f2_exit:
    # epilogue
    addl    $90760, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $37761, %eax            #   1:     sub    t1 <- 37761, 67323
    movl    $67323, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 7002
    movl    $7002, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 53699
    movl    $53699, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 65826
    movl    $65826, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t5 <- t4, 85358
    movl    $85358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $70111, %eax            #   6:     if     70111 > t5 goto 2_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   7:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   9:     goto   7_if_false
    jmp     l_test_5                #  10:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  16:     call   t6 <- ReadInt
    movl    %eax, -40(%ebp)        
l_test_10_while_cond:
    movl    $4615, %eax             #  18:     sub    t7 <- 4615, 54794
    movl    $54794, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $14009, %eax            #  19:     if     14009 = t7 goto 11_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  20:     goto   9
l_test_11_while_body:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $60610, %eax            #  24:     if     60610 <= 95140 goto 16_while_body
    movl    $95140, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  25:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:
    jmp     l_test_10_while_cond    #  29:     goto   10_while_cond
l_test_9:

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
