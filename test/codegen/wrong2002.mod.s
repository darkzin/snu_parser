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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 70 of <array 68 of <array 80 of <array 71 of <array 27 of <char>>>>>>> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <char> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t0
    movb    %al, -16(%ebp)         
l_f0_2_while_cond:
    movl    $97, %eax               #   3:     if     97 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $97, %eax               #   6:     if     97 # 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $1, %eax                #   9:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #  10:     goto   8
l_f0_7:
    movl    $0, %eax                #  12:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_8:
    movzbl  -14(%ebp), %eax         #  14:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    call    dummyBOOLfunc           #  17:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 86 of <array 42 of <array 20 of <array 57 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 9 of <array 77 of <array 95 of <array 95 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 75 of <array 98 of <array 3 of <array 9 of <array 68 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 24 of <array 54 of <array 11 of <array 81 of <bool>>>>>>> %ebp+20 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $18258, %eax            #   0:     sub    t0 <- 18258, 76763
    movl    $76763, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 7240
    movl    $7240, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t1
    jmp     l_f1_exit              
    movl    $80007, %eax            #   3:     mul    t2 <- 80007, 6680
    movl    $6680, %ebx            
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   4:     return t2
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $81901, %eax            #   9:     mul    t4 <- 81901, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  10:     add    t5 <- t4, 70697
    movl    $70697, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t8 <- t7, 258
    movl    $258, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     add    t11 <- t10, 16651
    movl    $16651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  23:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t13 <- t11, t12
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     add    t14 <- t13, 68601
    movl    $68601, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  27:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  28:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  29:     add    t17 <- t15, t16
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  30:     add    t18 <- v0, t17
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $65031, %eax            #  31:     assign @t18 <- 65031
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f1_3_while_cond       #  32:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 82 of <array 24 of <array 54 of <array 11 of <array 81 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 75 of <array 98 of <array 3 of <array 9 of <array 68 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 13 of <array 9 of <array 77 of <array 95 of <array 95 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 47 of <array 86 of <array 42 of <array 20 of <array 57 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 93 of <array 59 of <array 89 of <array 95 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 78 of <array 62 of <array 23 of <array 17 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #   -774123904(%ebp)  774123864  [ $v4       <array 47 of <array 86 of <array 42 of <array 20 of <array 57 of <int>>>>>> %ebp-774123904 ]
    #   -855430156(%ebp)  81306249  [ $v5       <array 13 of <array 9 of <array 77 of <array 95 of <array 95 of <bool>>>>>> %ebp-855430156 ]
    #   -868924780(%ebp)  13494624  [ $v6       <array 75 of <array 98 of <array 3 of <array 9 of <array 68 of <bool>>>>>> %ebp-868924780 ]
    #   -963613156(%ebp)  94688376  [ $v7       <array 82 of <array 24 of <array 54 of <array 11 of <array 81 of <bool>>>>>> %ebp-963613156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $963613144, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $240903286, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-774123904(%ebp)     # local array 'v4': 5 dimensions
    movl    $47,-774123900(%ebp)    #   dimension 1: 47 elements
    movl    $86,-774123896(%ebp)    #   dimension 2: 86 elements
    movl    $42,-774123892(%ebp)    #   dimension 3: 42 elements
    movl    $20,-774123888(%ebp)    #   dimension 4: 20 elements
    movl    $57,-774123884(%ebp)    #   dimension 5: 57 elements
    movl    $5,-855430156(%ebp)     # local array 'v5': 5 dimensions
    movl    $13,-855430152(%ebp)    #   dimension 1: 13 elements
    movl    $9,-855430148(%ebp)     #   dimension 2: 9 elements
    movl    $77,-855430144(%ebp)    #   dimension 3: 77 elements
    movl    $95,-855430140(%ebp)    #   dimension 4: 95 elements
    movl    $95,-855430136(%ebp)    #   dimension 5: 95 elements
    movl    $5,-868924780(%ebp)     # local array 'v6': 5 dimensions
    movl    $75,-868924776(%ebp)    #   dimension 1: 75 elements
    movl    $98,-868924772(%ebp)    #   dimension 2: 98 elements
    movl    $3,-868924768(%ebp)     #   dimension 3: 3 elements
    movl    $9,-868924764(%ebp)     #   dimension 4: 9 elements
    movl    $68,-868924760(%ebp)    #   dimension 5: 68 elements
    movl    $5,-963613156(%ebp)     # local array 'v7': 5 dimensions
    movl    $82,-963613152(%ebp)    #   dimension 1: 82 elements
    movl    $24,-963613148(%ebp)    #   dimension 2: 24 elements
    movl    $54,-963613144(%ebp)    #   dimension 3: 54 elements
    movl    $11,-963613140(%ebp)    #   dimension 4: 11 elements
    movl    $81,-963613136(%ebp)    #   dimension 5: 81 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     assign v3 <- 97
    movb    %al, 20(%ebp)          
    leal    -963613156(%ebp), %eax  #   2:     &()    t0 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  3 <- t0
    pushl   %eax                   
    leal    -868924780(%ebp), %eax  #   4:     &()    t1 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  2 <- t1
    pushl   %eax                   
    leal    -855430156(%ebp), %eax  #   6:     &()    t2 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    leal    -774123904(%ebp), %eax  #   8:     &()    t3 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  10:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #  11:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_f2_6                  #  12:     goto   6
l_f2_6:
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  18:     goto   11_while_body
    jmp     l_f2_9                  #  19:     goto   9
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  22:     goto   10_while_cond
l_f2_9:
    call    ReadInt                 #  24:     call   t6 <- ReadInt
    movl    %eax, -40(%ebp)        

l_f2_exit:
    # epilogue
    addl    $963613144, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $25298, %eax            #   0:     assign v0 <- 25298
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $0, %eax                #   2:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_1                #   3:     goto   1
l_test_1:
    movl    $1, %eax                #   5:     assign v1 <- 1
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
