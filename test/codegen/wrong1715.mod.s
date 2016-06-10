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
    #    -22(%ebp)   1  [ $t13      <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 85 of <array 63 of <array 58 of <array 31 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 83 of <array 96 of <array 70 of <array 98 of <array 46 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $30544, %eax            #   1:     add    t3 <- 30544, 47798
    movl    $47798, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t4 <- t3, 11523
    movl    $11523, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $69249, %eax            #   3:     add    t5 <- 69249, 18492
    movl    $18492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t6 <- t5, 39680
    movl    $39680, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t7 <- t6, 18219
    movl    $18219, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     sub    t8 <- t7, 50783
    movl    $50783, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t9 <- t8, 50403
    movl    $50403, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     add    t10 <- t9, 11550
    movl    $11550, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     sub    t11 <- t10, 6385
    movl    $6385, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -32(%ebp), %eax         #  10:     if     t4 >= t11 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_9                  #  15:     goto   9
l_f0_9:
    movl    $1, %eax                #  17:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_11                 #  18:     goto   11
    movl    $0, %eax                #  19:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_11:
    movzbl  -21(%ebp), %eax         #  21:     if     t12 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_6                  #  22:     goto   6
l_f0_5:
    movl    $1, %eax                #  24:     assign t13 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_7                  #  25:     goto   7
l_f0_6:
    movl    $0, %eax                #  27:     assign t13 <- 0
    movb    %al, -22(%ebp)         
l_f0_7:
    movzbl  -22(%ebp), %eax         #  29:     return t13
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  30:     call   t14 <- dummyCHARfunc
    movb    %al, -23(%ebp)         

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 93 of <array 56 of <array 54 of <array 49 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   3:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_if_false:
l_f1_1:
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 83 of <array 96 of <array 70 of <array 98 of <array 46 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 13 of <array 85 of <array 63 of <array 58 of <array 31 of <bool>>>>>>> %ebp-44 ]
    #   -125167840(%ebp)  125167794  [ $v0       <array 13 of <array 85 of <array 63 of <array 58 of <array 31 of <bool>>>>>> %ebp-125167840 ]
    #   1655417352(%ebp)  -1780585192  [ $v1       <array 83 of <array 96 of <array 70 of <array 98 of <array 46 of <bool>>>>>> %ebp+1655417352 ]
    #   1655417348(%ebp)   4  [ $v2       <int> %ebp+1655417348 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1655417360, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-413854340, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-125167840(%ebp)     # local array 'v0': 5 dimensions
    movl    $13,-125167836(%ebp)    #   dimension 1: 13 elements
    movl    $85,-125167832(%ebp)    #   dimension 2: 85 elements
    movl    $63,-125167828(%ebp)    #   dimension 3: 63 elements
    movl    $58,-125167824(%ebp)    #   dimension 4: 58 elements
    movl    $31,-125167820(%ebp)    #   dimension 5: 31 elements
    movl    $5,1655417352(%ebp)     # local array 'v1': 5 dimensions
    movl    $83,1655417356(%ebp)    #   dimension 1: 83 elements
    movl    $96,1655417360(%ebp)    #   dimension 2: 96 elements
    movl    $70,1655417364(%ebp)    #   dimension 3: 70 elements
    movl    $98,1655417368(%ebp)    #   dimension 4: 98 elements
    movl    $46,1655417372(%ebp)    #   dimension 5: 46 elements

    # function body
    leal    1655417352(%ebp), %eax  #   0:     &()    t3 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    movl    $4968, %eax             #   2:     div    t4 <- 4968, 2236
    movl    $2236, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     mul    t5 <- t4, 60544
    movl    $60544, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     mul    t6 <- t5, 23151
    movl    $23151, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     div    t7 <- t6, 66184
    movl    $66184, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     if     t7 = 61129 goto 1
    movl    $61129, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   7:     goto   2
l_f2_1:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f2_3:
    movzbl  -37(%ebp), %eax         #  14:     param  2 <- t8
    pushl   %eax                   
    movl    $100, %eax              #  15:     param  1 <- 100
    pushl   %eax                   
    leal    -125167840(%ebp), %eax  #  16:     &()    t9 <- v0
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  18:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
l_f2_6_while_cond:
    movl    $100, %eax              #  20:     return 100
    jmp     l_f2_exit              
    movl    $100, %eax              #  21:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  22:     goto   6_while_cond
    movl    $92160, %eax            #  23:     assign v2 <- 92160
    movl    %eax, 1655417348(%ebp) 

l_f2_exit:
    # epilogue
    addl    $-1655417360, %esp      # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_6_while_cond:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t1 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $9348, %eax             #  16:     add    t2 <- 9348, 4344
    movl    $4344, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     if     t2 > 59764 goto 13_while_body
    movl    $59764, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  18:     goto   11
l_test_13_while_body:
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_12_while_cond    #  21:     goto   12_while_cond
l_test_11:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
