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
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 81 of <array 52 of <array 4 of <array 34 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]

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
l_f0_1_while_cond:
    movl    $30114, %eax            #   1:     add    t3 <- 30114, 78941
    movl    $78941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 11981
    movl    $11981, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t5 <- t4, 37829
    movl    $37829, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 79476
    movl    $79476, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t7 <- t6, 10479
    movl    $10479, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     if     t7 < 58512 goto 2_while_body
    movl    $58512, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #  11:     assign v1 <- 100
    movb    %al, -33(%ebp)         
    jmp     l_f0_7_if_false         #  12:     goto   7_if_false
l_f0_9_while_cond:
    movl    $100, %eax              #  14:     if     100 = 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #  15:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  17:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
    jmp     l_f0_12                 #  20:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_5                  #  23:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 81 of <array 52 of <array 4 of <array 34 of <array 95 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 99 of <array 14 of <array 25 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 13 of <array 28 of <array 50 of <array 82 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 98 of <array 11 of <array 18 of <array 32 of <array 3 of <int>>>>>>> %ebp+20 ]
    #   -54419096(%ebp)  54419064  [ $v4       <array 81 of <array 52 of <array 4 of <array 34 of <array 95 of <bool>>>>>> %ebp-54419096 ]
    #   -54419097(%ebp)   1  [ $v5       <bool> %ebp-54419097 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $54419088, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13604772, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-54419096(%ebp)      # local array 'v4': 5 dimensions
    movl    $81,-54419092(%ebp)     #   dimension 1: 81 elements
    movl    $52,-54419088(%ebp)     #   dimension 2: 52 elements
    movl    $4,-54419084(%ebp)      #   dimension 3: 4 elements
    movl    $34,-54419080(%ebp)     #   dimension 4: 34 elements
    movl    $95,-54419076(%ebp)     #   dimension 5: 95 elements

    # function body
    leal    -54419096(%ebp), %eax   #   0:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   2:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_f1_2_while_cond:
    movl    $80249, %eax            #   4:     sub    t5 <- 80249, 36476
    movl    $36476, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $63060, %eax            #   5:     if     63060 <= t5 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    movl    $54133, %eax            #   8:     assign v0 <- 54133
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #   9:     assign v5 <- 1
    movb    %al, -54419097(%ebp)   
    jmp     l_f1_2_while_cond       #  10:     goto   2_while_cond
l_f1_1:
    call    dummyINTfunc            #  12:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $8702, %eax             #  13:     mul    t7 <- 8702, t6
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $54419088, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 54 of <array 81 of <array 65 of <array 55 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f2_exit              
    call    WriteLn                 #   2:     call   WriteLn
    movl    $88783, %eax            #   3:     mul    t4 <- 88783, 32423
    movl    $32423, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     div    t5 <- t4, 47853
    movl    $47853, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     div    t6 <- t5, 62720
    movl    $62720, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t7 <- t6, 89340
    movl    $89340, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     assign v0 <- t7
    movl    %eax, 8(%ebp)          

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 99 of <array 54 of <array 81 of <array 65 of <array 55 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    leal    v0, %eax                #   1:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t0
    pushl   %eax                   
    movl    $70925, %eax            #   3:     param  2 <- 70925
    pushl   %eax                   
    movl    $98, %eax               #   4:     param  1 <- 98
    pushl   %eax                   
    movl    $7310, %eax             #   5:     param  0 <- 7310
    pushl   %eax                   
    call    f2                      #   6:     call   t1 <- f2
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  12:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

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
v0:                                 # <array 99 of <array 54 of <array 81 of <array 65 of <array 55 of <bool>>>>>>
    .long    5
    .long   99
    .long   54
    .long   81
    .long   65
    .long   55
    .skip 1548067950








    # end of global data section
    #-----------------------------------------

    .end
##################################################
